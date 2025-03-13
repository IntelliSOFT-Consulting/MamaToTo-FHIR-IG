Profile: VitalSignProfile
Parent: Observation
Description: "Profile for recording the estimated date of delivery using LOINC code 11778-8."

* status 1..1 MS
* code.coding.system 1..1 MS
* code.coding.code 1..1 MS
* code.coding.display 1..1 MS
* subject.reference 1..1 MS
* effectiveDateTime 1..1 MS
* valueDateTime 1..1 MS


Instance: ExampleVitalSign  
InstanceOf: VitalSignProfile  
Title: "Example Vital Sign Observation"  
Description: "An example instance of a vital sign observation recording the estimated date of delivery (EDD) using LOINC code 11778-8."  

* status = #final  

* code.coding.system = "http://loinc.org"  
* code.coding.code = #11778-8  
* code.coding.display = "Estimated date of delivery"  

* subject.reference = "Patient/example"  

* effectiveDateTime = "2025-03-12T08:30:00Z"  

* valueDateTime = "2025-09-15"  