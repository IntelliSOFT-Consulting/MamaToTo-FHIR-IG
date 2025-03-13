Profile: ConditionProfile
Parent: Condition
Description: "Profile for a clinical condition record."

* identifier 1..1 MS
* clinicalStatus.coding.system 1..1 MS
* clinicalStatus.coding.code 1..1 MS
* clinicalStatus.coding.display 1..1 MS
* code.coding.system 1..1 MS
* code.coding.code 1..1 MS
* code.coding.display 1..1 MS
* subject.reference 1..1 MS
* onsetDateTime 1..1 MS



Instance: ExampleCondition
InstanceOf: ConditionProfile
Title: "Example Condition"
Description: "An example instance of a clinical condition record following the ConditionProfile."

* identifier.system = "http://hospital.org/conditions"
* identifier.value = "COND-12345"

* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding.code = #active
* clinicalStatus.coding.display = "Active"

* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #44054006
* code.coding.display = "Diabetes mellitus type 2"

* subject.reference = "Patient/example"
* onsetDateTime = "2024-12-01T00:00:00Z"