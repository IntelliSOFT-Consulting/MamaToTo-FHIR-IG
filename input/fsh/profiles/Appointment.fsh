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