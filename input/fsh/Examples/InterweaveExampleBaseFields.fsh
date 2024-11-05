
////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Rulesets to help with Examples
////////////////////////////////////////////////////////////////////////////////////////////////////////////

RuleSet: Ruleset-ExampleMetaForHospital(type)

//(Note - important to put our profile first, or else the website won't recognise it!)
* meta.lastUpdated = "2024-09-01T09:37:00Z"
* meta.profile[0] = "https://fhir.interweavedigital.nhs.uk/R4/StructureDefinition/Interweave-{type}"
* meta.profile[+] = "https://fhir.hl7.org.uk/StructureDefinition/UKCore-{type}"
* meta.versionId = "1"

* meta.tag[0] =  https://fhir.interweavedigital.nhs.uk/Source#ABC-01 "Acme Ltd Data Systems"
* meta.tag[1] =  https://fhir.interweavedigital.nhs.uk/Provenance#RCB "York and Scarborough Teaching Hospitals NHS Foundation Trust"

RuleSet: Ruleset-ExampleMetaForSocialCare(type)

//(Note - important to put our profile first, or else the website won't recognise it!)
* meta.lastUpdated = "2024-09-01T09:37:00Z"
* meta.profile[0] = "https://fhir.interweavedigital.nhs.uk/R4/StructureDefinition/Interweave-{type}"
* meta.profile[+] = "https://fhir.hl7.org.uk/StructureDefinition/UKCore-{type}"
* meta.versionId = "1"

* meta.tag[0] =  https://fhir.interweavedigital.nhs.uk/Source#ABC-01 "Acme Ltd Data Systems"
* meta.tag[1] =  https://fhir.interweavedigital.nhs.uk/Provenance#212 "Leeds City Council"

RuleSet: Ruleset-ExampleLocalId(type, localId)

* identifier[0].system = "https://fhir.interweavedigital.nhs.uk/Id/local-{type}-identifier"
* identifier[=].value = "{localId}" 