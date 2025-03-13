Profile: PregnancyGravida
Parent: Observation
Description: "Profile for an observation of the number of pregnancies (gravida) using LOINC and WHO ANC CDS custom codes."

* status 1..1 MS
* category.coding.system 1..1 MS
* category.coding.code 1..1 MS
* category.coding.display 1..1 MS
* code.coding.system 1..1 MS
* code.coding.code 1..1 MS
* code.coding.display 1..1 MS
* code.coding.system 1..1 MS
* code.coding.code 1..1 MS
* code.coding.display 1..1 MS
* subject.reference 1..1 MS
* encounter.reference 1..1 MS
* effectiveDateTime 1..1 MS
* issued 1..1 MS
* valueInteger 1..1 MS




Instance: ExamplePregnancyGravida  
InstanceOf: PregnancyGravida  
Title: "Example Pregnancy Gravida"  
Description: "An example instance of an observation recording the number of pregnancies (gravida) using LOINC and WHO ANC CDS custom codes."  

* status = #final  

* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"  
* category.coding.code = #survey  
* category.coding.display = "Survey"  

* code.coding[0].system = "http://loinc.org"  
* code.coding[0].code = #11996-6  
* code.coding[0].display = "Number of pregnancies"  

* code.coding[1].system = "http://who.int/anc-cds"  
* code.coding[1].code = #GRAVIDA  
* code.coding[1].display = "Gravida (Total number of pregnancies)"  

* subject.reference = "Patient/example"  

* encounter.reference = "Encounter/example"  

* effectiveDateTime = "2025-03-12T08:30:00Z"  
* issued = "2025-03-12T09:00:00Z"  

* valueInteger = 3  