ValueSet: InterweaveSocialCareServiceCategory
Id: Interweave-SocialCareServiceCategory
Title: "InterweaveSocialCareServiceCategory"
Description: "A categorisation of the type of service that a person is receiving."
* ^name = "InterweaveSocialCareServiceCategory"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^experimental = false

* include codes from system Interweave-SocialCareServiceCategory

CodeSystem: InterweaveSocialCareServiceCategory
Id: Interweave-SocialCareServiceCategory
Title: "InterweaveSocialCareServiceCategory"
Description: "A categorisation of the type of service that a person is receiving."
* ^name = "InterweaveSocialCareServiceCategory"
* ^content = #complete
* ^caseSensitive = true
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^url = "https://fhir.interweavedigital.nhs.uk/CodeSystem/Interweave-SocialCareServiceCategory"

* #STS-STMAX "Short Term Support: ST-Max"
* #STS-OLL "Short Term Support: Ongoing Low Level"
* #STS-OST "Short Term Support: Other Short Term"
* #LTS-NC "Long Term Support: Nursing Care"
* #LTS-RS "Long Term Support: Residential Care"
* #LTS-C "Long Term Support: Community"
* #LTS-P "Long Term Support: Prison"
* #CS-DC "Carer Support: Direct to Carer"
* #CS-SIPC "Carer Support: Support involving the person cared-for"
* #DNH-SL "Data Not Held- System Level"
* #DNH-IL "Data Not Held-Individual Level"
* #OTH "Other"