Profile: LabResultObservation
Parent: Observation
Description: "Profile for a laboratory observation of hemoglobin mass/volume in blood."

* identifier 1..1 MS
* status 1..1 MS
* category.coding.system 1..1 MS
* category.coding.code 1..1 MS
* category.coding.display 1..1 MS
* code.coding.system 1..1 MS
* code.coding.code 1..1 MS
* code.coding.display 1..1 MS
* subject.reference 1..1 MS
* encounter.reference 1..1 MS
* effectiveDateTime 1..1 MS
* valueQuantity.value 1..1 MS
* valueQuantity.unit 1..1 MS
* valueQuantity.system 1..1 MS
* valueQuantity.code 1..1 MS



Instance: ExampleLabResultObservation  
InstanceOf: LabResultObservation  
Title: "Example Hemoglobin Lab Result"  
Description: "An example instance of a laboratory observation recording hemoglobin mass/volume in blood."  

* identifier.system = "http://hospital.org/lab-results"  
* identifier.value = "LAB-67890"  

* status = #final  

* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"  
* category.coding.code = #laboratory  
* category.coding.display = "Laboratory"  

* code.coding.system = "http://loinc.org"  
* code.coding.code = #718-7  
* code.coding.display = "Hemoglobin [Mass/volume] in Blood"  

* subject.reference = "Patient/example"  

* encounter.reference = "Encounter/example"  

* effectiveDateTime = "2025-03-12T08:30:00Z"  

* valueQuantity.value = 13.5  
* valueQuantity.unit = "g/dL"  
* valueQuantity.system = "http://unitsofmeasure.org"  
* valueQuantity.code = #g/dL  