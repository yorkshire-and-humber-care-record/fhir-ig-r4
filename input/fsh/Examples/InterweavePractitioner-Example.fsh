///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Examples
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Instance: InterweavePractitionerExample-Consultant
InstanceOf: InterweavePractitioner
Description: "Interweave Practitioner example - Consultant"

* insert Ruleset-ExampleMetaForHospital(Practitioner)

* identifier[0].system = "https://fhir.nhs.uk/Id/sds-user-id"
* identifier[=].value = "ABC123"
* identifier[+].system = "https://fhir.hl7.org.uk/id/gmc-number"
* identifier[=].value = "1111111"

* active = true
* name[0].given[0] = "Jane"
* name[0].family = "Bloggs"
* name[0].prefix = "Dr"
* name[0].suffix = "RCOG"

* telecom[0].system = #phone "Phone"
* telecom[0].use = #work "Work"
* telecom[0].value = "01234 123412"

* gender = http://hl7.org/fhir/administrative-gender#female "Female"

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Nurse Example
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Instance: InterweavePractitionerExample-Nurse
InstanceOf: InterweavePractitioner
Description: "Interweave Practitioner example - Nurse"

* insert Ruleset-ExampleMetaForHospital(Practitioner)

* identifier[0].system = "https://fhir.nhs.uk/Id/sds-user-id"
* identifier[=].value = "ABC123"
* identifier[+].system = "https://fhir.hl7.org.uk/id/nmc-number"
* identifier[=].value = "99A9999A"

* active = true
* name[0].given[0] = "Julia"
* name[0].family = "Bloggs"
* name[0].prefix = "Miss"

* telecom[0].system = #email "Email"
* telecom[=].use = #work "Work"
* telecom[=].value = "julia.bloggs@testorg.com"

* telecom[+].system = #phone "Phone"
* telecom[=].use = #work "Work"
* telecom[=].value = "01234 123412"

* gender = http://hl7.org/fhir/administrative-gender#female "Female"