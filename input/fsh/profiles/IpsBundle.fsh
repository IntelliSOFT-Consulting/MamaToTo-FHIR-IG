Alias: LOINC = http://loinc.org
Alias: SCT = http://snomed.info/sct

Instance: IPS-examples-Bundle-01
InstanceOf: Bundle
Title: "Bundle - IPS with Data"
Description: "Bundle - IPS with Data"
Usage: #example
* language = #en-GB
* identifier.system = "urn:oid:2.16.724.4.8.10.200.10"
* identifier.value = "175bd032-8b00-4728-b2dc-748bb1501aed"
* type = #document
* timestamp = "2017-12-11T14:30:00+01:00"

// First entry must be a Composition
* entry[0].fullUrl = "urn:uuid:12345678-1234-1234-1234-123456789abc"
* entry[0].resource = Composition-Example

// Entry for first observation
* entry[1].fullUrl = "urn:uuid:b4916505-a06b-460c-9be8-011609282457"
* entry[1].resource = b4916505-a06b-460c-9be8-011609282457

// Entry for second observation
* entry[2].fullUrl = "urn:uuid:a6a5a1d5-c896-4c7e-b922-888fcc7e6ae4"
* entry[2].resource = a6a5a1d5-c896-4c7e-b922-888fcc7e6ae4

// Composition Instance (first entry)
Instance: Composition-Example
InstanceOf: Composition
Title: "Example Composition"
Usage: #inline
* status = #final
* type.coding[0].system = "http://terminology.hl7.org/CodeSystem/CompositionType"
* type.coding[0].code = #60591-5  // Correctly assigning the code within a CodeableConcept
* subject.reference = "urn:uuid:2b90dd2b-2dab-4c75-9bb9-a355e07401e8"
* date = "2017-12-11T14:30:00+01:00"
* title = "International Patient Summary"
* author.reference = "Practitioner/123"  // Example reference to a Practitioner

// Observation 1 Instance (second entry)
Instance: b4916505-a06b-460c-9be8-011609282457
InstanceOf: Observation
Usage: #inline
* status = #final
* code = LOINC#1018-1 "E Ab [Presence] in Serum or Plasma"
* subject.reference = "urn:uuid:2b90dd2b-2dab-4c75-9bb9-a355e07401e8"
* effectiveDateTime = "2015-10-10T09:35:00+01:00"
* performer.reference = "Practitioner/123"
* valueCodeableConcept = SCT#10828004 "Positive"

// Observation 2 Instance (third entry)
Instance: a6a5a1d5-c896-4c7e-b922-888fcc7e6ae4
InstanceOf: Observation
Usage: #inline
* status = #final
* code = LOINC#1156-9 "little c Ab [Presence] in Serum or Plasma"
* subject.reference = "urn:uuid:2b90dd2b-2dab-4c75-9bb9-a355e07401e8"
* effectiveDateTime = "2015-10-10T09:35:00+01:00"
* performer.reference = "Practitioner/123"
* valueCodeableConcept = SCT#260385009 "Negative"
