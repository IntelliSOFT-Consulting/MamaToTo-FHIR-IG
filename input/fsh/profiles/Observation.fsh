Profile: ObservationProfile
Parent: Observation
Id: ObservationProfile
Title: "ObservationProfile"
Description: "ObservationProfile"
* identifier 0..*
* identifier.system 1..1
* identifier.value 1..1
* status 1..1
* category 0..*
* code 1..1
* subject 0..1
* subject only Reference(Patient)
* effective[x] 0..1
* effectiveDateTime
* effectivePeriod
* issued 0..1
* value[x] 0..1
* value[x].valueQuantity
* value[x].valueCodeableConcept
* value[x].valueString
* value[x].valueBoolean
* value[x].valueInteger
* value[x].valueRange
* value[x].valueTime
* value[x].valueDateTime
* value[x].valuePeriod
* interpretation 0..*
* bodySite 0..1
* method 0..1
* referenceRange 0..*
* component.code 1..1
* component.value[x] 0..1
* interpretation 0..*
* dataAbsentReason 0..1