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



Instance: ExamplePregnancyEDDObservation  
InstanceOf: PregnancyEDDObservation  
Title: "Example Pregnancy EDD Observation"  
Description: "An example instance of an estimated date of delivery (EDD) observation following the PregnancyEDDObservation profile."  

* status = #final  

* code.coding.system = "http://loinc.org"  
* code.coding.code = #11778-8  
* code.coding.display = "Estimated date of delivery"  

* subject.reference = "Patient/example"  

* effectiveDateTime = "2025-03-01T00:00:00Z"  
* valueDateTime = "2025-12-01T00:00:00Z"  