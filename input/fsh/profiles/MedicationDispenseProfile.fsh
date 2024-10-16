Profile: MedicationDispenseProfile
Parent: MedicationDispense
Description: "Profile for a medication dispense record."

* identifier 1..1 MS
* status 1..1 MS
* medicationCodeableConcept.coding.system 1..1 MS
* medicationCodeableConcept.coding.code 1..1 MS
* medicationCodeableConcept.coding.display 1..1 MS
* subject.reference 1..1 MS
* context.reference 1..1 MS
* whenHandedOver 1..1 MS