# Stage 1: Compile FSH with SUSHI
FROM node:20-alpine AS sushi

RUN npm install -g fsh-sushi

WORKDIR /ig

COPY sushi-config.yaml ig.ini ./
COPY input/ ./input/

RUN sushi .

# Stage 2: Publish IG with HL7 IG Publisher
FROM eclipse-temurin:17-jdk-jammy AS publisher

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    ruby-full \
    build-essential \
    && gem install jekyll \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /ig

COPY ig.ini sushi-config.yaml ./
COPY input/ ./input/
COPY --from=sushi /ig/fsh-generated /ig/fsh-generated

RUN mkdir -p input-cache && \
    curl -fsSL https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar \
      -o input-cache/publisher.jar

RUN set -e; \
    if curl -fsSf tx.fhir.org > /dev/null 2>&1; then \
      TX_OPTION=""; \
    else \
      TX_OPTION="-tx n/a"; \
    fi; \
    export JAVA_TOOL_OPTIONS="-Dfile.encoding=UTF-8"; \
    java -Xmx4g -jar input-cache/publisher.jar -ig . -no-sushi $TX_OPTION

# Stage 3: Serve static IG site
FROM nginx:alpine AS runtime

COPY --from=publisher /ig/output/ /usr/share/nginx/html/

RUN printf '%s\n' \
    'server {' \
    '    listen 8080;' \
    '    server_name _;' \
    '    root /usr/share/nginx/html;' \
    '    index index.html;' \
    '    location / {' \
    '        try_files $uri $uri/ =404;' \
    '    }' \
    '}' > /etc/nginx/conf.d/default.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
