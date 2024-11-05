ValueSet: InterweaveSocialCareSupportReasonCategory
Id: Interweave-SocialCareSupportReasonCategory
Description: "Defines the set of codes that can be used to identify the category of support reason."
Title: "InterweaveSocialCareSupportReasonCategory"
* ^name = "InterweaveSocialCareSupportReasonCategory"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^experimental = false

// Include the standard care connect codes
* include codes from valueset https://fhir.hl7.org.uk/ValueSet/UKCore-ConditionCategory
* include codes from system Interweave-SocialCareSupportReasonCategory


CodeSystem: InterweaveSocialCareSupportReasonCategory
Id: Interweave-SocialCareSupportReasonCategory
Title: "InterweaveSocialCareSupportReasonCategory"
Description: "The categorisation of the social care support reason."
* ^name = "InterweaveSocialCareSupportReasonCategory"
* ^content = #complete
* ^caseSensitive = true
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^experimental = false
* ^date = "2024-07-15"
* ^url = "https://fhir.interweavedigital.nhs.uk/CodeSystem/Interweave-SocialCareSupportReasonCategory"

* #LDS "Learning Disability Support"
* #MHS "Mental Health Support"
* #PS "Physical Support"
* #SMC "Support with Memory and Cognition"
* #SOS "Social Support"
* #SS "Sensory Support"
* #UNK "PSR Not Known"