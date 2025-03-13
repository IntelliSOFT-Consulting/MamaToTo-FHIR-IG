Profile: EncounterProfile
Parent: Encounter
Description: "An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient."
* identifier 0..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* status 1..1 MS
* serviceType 0..1 MS
* subject 0..1 MS
* period 0..1 MS
* length 0..1 MS
* reasonCode 0..1 MS
* appointment 0..1 MS
* diagnosis 0..* MS
* diagnosis.condition 1..1 MS
* serviceProvider 0..1 MS



// Instance: ExampleEncounter  
// InstanceOf: EncounterProfile  
// Title: "Example Encounter"  
// Description: "An example instance of a patient encounter following the EncounterProfile."  

// * identifier.system = "http://hospital.org/encounters"  
// * identifier.value = "ENC-56789"  

// * status = #finished  

// * serviceType.coding.system = "http://terminology.hl7.org/CodeSystem/service-type"  
// * serviceType.coding.code = #57  
// * serviceType.coding.display = "General Practice"  

// * subject.reference = "Patient/example"  

// * period.start = "2025-03-10T08:00:00Z"  
// * period.end = "2025-03-10T09:30:00Z"  

// * length.value = 90  
// * length.unit = "minutes"  

// * reasonCode.coding.system = "http://snomed.info/sct"  
// * reasonCode.coding.code = #162573006  
// * reasonCode.coding.display = "Routine check-up"  

// * appointment.reference = "Appointment/ExampleAppointment"  

// * diagnosis[0].condition.reference = "Condition/example"  

// * serviceProvider.reference = "Organization/example"  