ValueSet: InterweaveFlagCategory
Id: Interweave-FlagCategory
Title: "InterweaveFlagCategory"
Description: "Defines the set of codes that can be used to identify the category of flag which has been placed against a patient."
* ^name = "InterweaveFlagCategory"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^experimental = false
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."

//This valueset combines SNOMED and locally created codes


//SNOMED concepts to include:
* include codes from system SNOMED_CT where concept is-a #303186005 //Legal status of patient
//Locally defined codes:
* include codes from system Interweave-FlagCategory


CodeSystem: InterweaveFlagCategory
Id: Interweave-FlagCategory
Title: "InterweaveFlagCategory"
Description: "The categorisation of social care flags which can be placed against a person."
* ^name = "InterweaveFlagCategory"
* ^content = #complete
* ^caseSensitive = true
* ^experimental = false
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^url = "https://fhir.interweavedigital.nhs.uk/CodeSystem/Interweave-FlagCategory"

* #RTO "Risk to other"
* #RTS "Risk to self"
* #RSO "Risk to self & others"
* #SGC "Safeguarding concern"
* #OTH "Other"