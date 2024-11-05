ValueSet: InterweaveReferralRequestMethod
Id: Interweave-ReferralRequestMethod
Description: "A ValueSet to identify the form in which a referral is sent and received."
Title : "InterweaveReferralRequestMethod"
* ^name = "InterweaveReferralRequestMethod"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^experimental = false
* ^status = #draft

* include codes from valueset http://hl7.org/fhir/ValueSet/service-referral-method
* include codes from system Interweave-ReferralRequestMethod


CodeSystem: InterweaveReferralRequestMethod
Id: Interweave-ReferralRequestMethod
Title : "InterweaveReferralRequestMethod"
Description: "A CodeSystem to identify the form in which a referral is sent and received."
* ^name = "InterweaveReferralRequestMethod"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

* #NHSERS "NHS E-Referral Service"
* #SELF "Self Referral"

//Add URL
* ^url = "https://fhir.interweavedigital.nhs.uk/CodeSystem/Interweave-ReferralRequestMethod"