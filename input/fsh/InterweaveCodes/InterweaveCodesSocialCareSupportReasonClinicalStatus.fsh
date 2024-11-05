Alias: $ClinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical

ValueSet: InterweaveSocialCareSupportReasonClinicalStatus
Id: Interweave-SocialCareSupportReasonClinicalStatus
Title: "InterweaveSocialCareSupportReasonClinicalStatus"
Description: "This valueset uses codes from the R4 FHIR condition-clinical code system to indicate the status of support reason."
* ^name = "InterweaveSocialCareSupportReasonClinicalStatus"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^experimental = false

* $ClinicalStatus#active "Active"
* $ClinicalStatus#inactive "Inactive"