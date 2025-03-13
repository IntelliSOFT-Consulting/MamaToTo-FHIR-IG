Profile: AppointmentResponseProfile
Parent: AppointmentResponse
Id: AppointmentResponseProfile
Title: "AppointmentResponseProfile"
Description: "AppointmentResponseProfile"
* identifier 0..1 MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* appointment 1..1 MS
* start 0..1 MS
* end 0..1 MS
* participantType 0..* MS
* actor 0..1 MS
* participantStatus 1..1 MS
* comment 0..1 MS




Instance: ExampleAppointmentResponse
InstanceOf: AppointmentResponseProfile
Title: "Example Appointment Response"
Description: "An example instance of an appointment response following the AppointmentResponseProfile."

* identifier.system = "http://hospital.org/appointment-responses"
* identifier.value = "AR-67890"
* appointment.reference = "Appointment/ExampleAppointment"
* start = "2025-03-15T10:00:00Z"
* end = "2025-03-15T10:30:00Z"

* participantType[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* participantType[0].coding[0].code = #ATND
* participantType[0].coding[0].display = "Attender"

* actor.reference = "Practitioner/example"
* participantStatus = #accepted
* comment = "Confirmed by the attending practitioner."