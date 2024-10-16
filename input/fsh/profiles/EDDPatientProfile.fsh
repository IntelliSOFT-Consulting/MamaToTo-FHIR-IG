Profile: PregnancyEDDObservation
Parent: Observation
Description: "Profile for an observation of estimated date of delivery (EDD) based on LOINC code 11778-8."

// * id = "example-pregnancy-edd"
* status 1..1 MS
* code.coding.system 1..1 MS
* code.coding.code 1..1 MS
* code.coding.display 1..1 MS
* subject.reference 1..1 MS
* effectiveDateTime 1..1 MS
* valueDateTime 1..1 MS