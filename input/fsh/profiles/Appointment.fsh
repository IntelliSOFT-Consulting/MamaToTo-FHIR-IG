Profile: AppointmentProfile
Parent: Appointment
Id: AppointmentProfile
Title: "AppointmentProfile"
Description: "AppointmentProfile"
* identifier 0..1 MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* status 1..1 MS
* cancelationReason 0..1 MS
* serviceCategory 0..* MS
* serviceType 0..* MS
* specialty 0..* MS
* appointmentType 0..1 MS
* reasonCode 0..* MS
* reasonReference 0..* MS
* reasonReference only Reference(ObservationProfile or Condition)
* start 0..1 MS
* end 0..1 MS
* created 0..1 MS
* comment 0..1 MS
* basedOn 0..1 MS
* participant 1..* MS
* participant.type 0..* MS
* participant.actor 0..1 MS
* participant.required 0..1 MS
* participant.status 1..1 MS
* participant.period 0..1 MS


Instance: ExampleAppointment
InstanceOf: AppointmentProfile
Title: "Example Appointment"
Description: "An example instance of an appointment following the AppointmentProfile."

* identifier.system = "http://hospital.org/appointments"
* identifier.value = "APT-12345"
* status = #booked
* serviceCategory[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/service-category"
* serviceCategory[0].coding[0].code = #57
* serviceCategory[0].coding[0].display = "General Practice"
* serviceType[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/service-type"
* serviceType[0].coding[0].code = #17
* serviceType[0].coding[0].display = "Routine Checkup"
* specialty[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/specialty"
* specialty[0].coding[0].code = #394582007
* specialty[0].coding[0].display = "General Medicine"
* appointmentType.coding[0].system = "http://terminology.hl7.org/CodeSystem/appointment-type"
* appointmentType.coding[0].code = #WALKIN
* appointmentType.coding[0].display = "Walk-in"
* reasonCode[0].coding[0].system = "http://snomed.info/sct"
* reasonCode[0].coding[0].code = #162573006
* reasonCode[0].coding[0].display = "Routine check-up"
* reasonReference[0].reference = "Observation/example"
* start = "2025-03-15T10:00:00Z"
* end = "2025-03-15T10:30:00Z"
* created = "2025-03-10T09:00:00Z"
* comment = "Patient requested a morning appointment."
* basedOn.reference = "ServiceRequest/example"

* participant[0].type[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* participant[0].type[0].coding[0].code = #ATND
* participant[0].type[0].coding[0].display = "Attender"
* participant[0].actor.reference = "Practitioner/example"
* participant[0].required = #required
* participant[0].status = #accepted
* participant[0].period.start = "2025-03-15T10:00:00Z"
* participant[0].period.end = "2025-03-15T10:30:00Z"

* participant[1].actor.reference = "Patient/example"
* participant[1].status = #accepted