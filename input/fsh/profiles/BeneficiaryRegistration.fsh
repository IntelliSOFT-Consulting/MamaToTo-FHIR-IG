// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Alias: $Contact_point_us_VS = http://hl7.org/fhir/contact-point-use



Profile: BeneficiaryRegistry
Parent: Patient
Description: "An example profile of the Patient resource."
* identifier 0..* MS
* identifier.type.coding.system 1..1 MS
* identifier.type.coding.code from identifierTypesVS
* identifier.value 1..1 MS
* name 1..1 MS
* active MS
// * gender from genderVS -> Use the default valueset provided by FHIR
* birthDate MS
* maritalStatus.coding.system 1..1 MS
* maritalStatus.coding.code 1..1 MS 
* maritalStatus from maritalStatusVS
* telecom 0..* MS
// * telecom.use from $Contact_point_us_VS -> telecom.use is a code, not a URL
* telecom.system 1..1 MS
* telecom.value 1..1 MS


Instance: BeneficiaryExample
InstanceOf: BeneficiaryRegistry
Usage: #example
* identifier.type.coding.system = "http://example.org/beneficiary"
// * identifier.type.coding.code = #ID12345
* identifier.type.coding.code = IDENTIFIERTYPES#DE1
* identifier.value = #12453
* active = true
* name.text = "John Doe"
* name.family = "Doe"
* gender = #male
* birthDate = "1980-06-03"
* maritalStatus.coding.system = #http://example.org/CodeSystem/MMT.A
* maritalStatus.coding.code = #DE16
* telecom.system = #phone
* telecom.value = "555-1234"

// * maritalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
// * maritalStatus.coding.code = "S"
// * maritalStatus.coding.display = "Single"
// * maritalStatus.text = "Single"


// * telecom.use = #mobile
// * telecom.system = "mobile"
// * telecom.value = "+254736734344"



// Identifier:
// - system: "http://example.org/beneficiary"
//   value: "12345"
// Name: "John Doe"
// Active: true
// Gender: #male
// BirthDate: "1980-01-01"
// MaritalStatus:
//   system: "http://hl7.org/fhir/ValueSet/marital-status"
//   code: "M"
// Telecom:
// - use: #home
//   system: #phone
//   value: "555-1234"
// - use: #work
//   system: #email
//   value: "john.doe@example.com"








Instance: PatientExample
InstanceOf: BeneficiaryRegistry
Description: "An example of a patient with a license to krill."
* name
  * given[0] = "James"
  * family = "Pond"

