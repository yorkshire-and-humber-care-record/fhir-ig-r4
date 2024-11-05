ValueSet: InterweaveSocialCareSupportReason
Id: Interweave-SocialCareSupportReason
Description: "Defines the set of codes that can be used to identify the support reason."
Title: "InterweaveSocialCareSupportReason"
* ^name = "InterweaveSocialCareSupportReason"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^experimental = false

* include codes from system Interweave-SocialCareSupportReason


CodeSystem: InterweaveSocialCareSupportReason
Id: Interweave-SocialCareSupportReason
Title: "InterweaveSocialCareSupportReason"
Description: "The social care support reason."
* ^name = "InterweaveSocialCareSupportReason"
* ^content = #complete
* ^caseSensitive = true
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^experimental = false
* ^hierarchyMeaning = #grouped-by
* ^url = "https://fhir.interweavedigital.nhs.uk/CodeSystem/Interweave-SocialCareSupportReason"

* #LDS "Learning Disability Support"
* #MHS "Mental Health Support"
* #PS "Physical Support"
* #PS #PS-AMO "Physical Support: Access & mobility only"
* #PS #PS-PCS "Physical Support: Personal care support"
* #SMC "Support with Memory and Cognition"
* #SOS "Social Support"
* #SOS #SOS-SMS	"Social Support: Substance misuse support"
* #SOS #SOS-ASS	"Social Support: Asylum seeker support"
* #SOS #SOS-IO "Social Support: Support for Social Isolation/Other"
* #SS "Sensory Support"
* #SS #SS-SVI "Sensory Support: Support for visual impairment"
* #SS #SS-SHI "Sensory Support: Support for hearing impairment"
* #SS #SS-SDI "Sensory Support: Support for dual impairment"
* #UNK "PSR Not Known"