Profile: AppointmentProfile
Parent: Appointment
Id: AppointmentProfile
Title: "AppointmentProfile"
Description: "A profile defining constraints for teleconsultation appointments including service category, type, and participant details."

* status 1..1

* serviceCategory 1..1 MS
* serviceCategory.coding 1..1 MS
* serviceCategory.coding.system 1..1
* serviceCategory.coding.code 1..1 MS
* serviceCategory.text 0..1 MS

* serviceType 1..1
* serviceType.coding 1..1
* serviceType.coding.code 1..1 MS
* serviceType.text 0..1 MS

* specialty 1..1 MS
* specialty.coding 1..1 MS
* specialty.coding.system 1..1 MS
* specialty.coding.code 1..1 MS
* specialty.text 0..1 MS

* appointmentType 1..1
* appointmentType.coding 1..1
* appointmentType.coding.system  1..1 MS
* appointmentType.coding.code 1..1 MS
* appointmentType.text 0..1 MS

* priority 0..1 MS
* description 1..1 MS
* description 1..1 MS

* start 1..1
* end 1..1
* created 1..1
* comment 0..1

* participant 1..*
* participant.actor 1..1
* participant.actor only Reference(Patient)
* participant.required 1..1 MS
* participant.status 1..1 MS


Instance: ExampleAppointment
InstanceOf: AppointmentProfile
Title: "Example Teleconsultation Appointment"
Description: "An example of an appointment conforming to the AppointmentProfile for a teleconsultation."

* status = #booked

* serviceCategory.coding.system = "http://example.org/service-category"
* serviceCategory.coding.code = #gp
* serviceCategory.text = "General Practice"

* serviceType.coding.code = #52
* serviceType.text = "General Discussion"

* specialty.coding.system = "http://snomed.info/sct"
* specialty.coding.code = #394814009
* specialty.text = "General practice"

* appointmentType.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0276"
* appointmentType.coding.code = #FOLLOWUP
* appointmentType.text = "A follow up visit from a previous appointment"

* priority = 5
* description = "Teleconsultation"

* start = "2025-05-30T09:00:00+03:00"
* end = "2025-05-30T09:30:00+03:00"
* created = "2025-05-25T15:28:46+03:00"
* comment = "Patient to connect via video link sent to their phone."

* participant[0].actor.reference = "Patient/example"
* participant[0].required = #required
* participant[0].status = #accepted
