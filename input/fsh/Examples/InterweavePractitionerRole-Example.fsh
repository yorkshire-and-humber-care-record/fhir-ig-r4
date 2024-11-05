Alias: $SCT = http://snomed.info/sct
Alias: $SDSJobRole = https://fhir.interweavedigital.nhs.uk/CodeSystem/Interweave-SDSJobRoleName
// *************************************************************************************************************************
// EXAMPLES
// *************************************************************************************************************************
Instance: InterweavePractitionerRoleExample
InstanceOf: InterweavePractitionerRole
Description: "Interweave PractitionerRole Example"

* insert Ruleset-ExampleMetaForHospital(PractitionerRole)

* insert Ruleset-ExampleLocalId(PractitionerRole, RCB.PRLE-R0050)

* active = true
* period.start = "2012-01-01"
* period.end = "2032-03-31"
* practitioner = Reference(InterweavePractitionerExample-Consultant) "Dr Jane BLOGGS"
* organization = Reference(InterweaveOrganizationExample-AcuteTrust) "York and Scarborough Teaching Hospitals NHS Foundation Trust"
* code[0] = $SCT#309339007 "Adult intensive care specialist"
* code[+] = $SDSJobRole#R0050 "Consultant"
* specialty = https://fhir.hl7.org.uk/CodeSystem/UKCore-PracticeSettingCode#180 "Emergency Medicine"
* location = Reference(InterweaveLocationExample-Ward-AandE) "York Hospital: Accident and Emergency"

* extension[Extension-Interweave-ServiceType].valueCodeableConcept = $SCT#409971007 "Emergency medical services"