Profile: AppointmentProfile
Parent: Appointment
Id: AppointmentProfile
Title: "AppointmentProfile"
Description: "AppointmentProfile"
* identifier 0..1
* identifier.system 1..1
* identifier.value 1..1
* status 1..1
* cancelationReason 0..1
* serviceCategory 0..*
* serviceType 0..*
* specialty 0..*
* appointmentType 0..1
* reasonCode 0..*
* reasonReference 0..*
* reasonReference only Reference(ObservationProfile or Condition)
* start 0..1
* end 0..1
* created 0..1
* comment 0..1
* basedOn 0..1
* participant 1..*
* participant.type 0..*
* participant.actor 0..1
* participant.required 0..1
* participant.status 1..1
* participant.period 0..1