// Logical:      IMMZARegisterClient
// Title:        "IMMZ.A Register Client"
// Description:  "Data elements for the IMMZ.A Register Client Data Dictionary."
// * ^extension[http://hl7.org/fhir/tools/StructureDefinition/logical-target].valueBoolean = true
// * ^name = "IMMZARegisterClient"
// * ^status = #active

// * identifier 1..1 SU string "unique identifier for the client, according to the policies applicable to each country. There can be more than one unique identifier used to link records (e.g. national ID, health ID, immunization information system ID, medical record ID)."
//   * ^code[+] = IMMZ.A#DE1 