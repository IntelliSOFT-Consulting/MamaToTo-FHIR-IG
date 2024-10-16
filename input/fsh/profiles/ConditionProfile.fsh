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