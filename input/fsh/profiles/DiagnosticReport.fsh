Profile: DiagnosticReportProfile
Parent: DiagnosticReport
Id: DiagnosticReportProfile
Title: "DiagnosticReportProfile"
Description: "DiagnosticReport"
* identifier 0..1 MS
* status 1..1 MS
* category 0..* MS
* code 1..1 MS
* subject 0..1 MS
* encounter 0..1 MS
* effective[x] 0..1 MS
* effectiveDateTime 0..1 MS
* effectivePeriod 0..1 MS
* performer 0..* MS
* specimen 0..* MS




Instance: ExampleDiagnosticReport  
InstanceOf: DiagnosticReportProfile  
Title: "Example Diagnostic Report"  
Description: "An example instance of a diagnostic report following the DiagnosticReportProfile."  

* identifier.system = "http://hospital.org/diagnostic-reports"  
* identifier.value = "DR-98765"  

* status = #final  

* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/v2-0074"  
* category[0].coding.code = #LAB  
* category[0].coding.display = "Laboratory"  

* code.coding.system = "http://loinc.org"  
* code.coding.code = #58410-2  
* code.coding.display = "Complete blood count (CBC) panel"  

* subject.reference = "Patient/example"  
* encounter.reference = "Encounter/example"  

* effectiveDateTime = "2025-03-10T08:30:00Z"  

* performer[0].reference = "Practitioner/example"  

* specimen[0].reference = "Specimen/example"  