ValueSet: InterweaveFlagType
Id: Interweave-FlagType
Title: "InterweaveFlagType"
Description: "Defines the set of codes that can be used to identify the type of flag which has been placed against a patient."
* ^name = "InterweaveFlagType"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^experimental = false
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."

//This valueset combines SNOMED and locally created codes

//SNOMED concepts to include:
* include codes from system SNOMED_CT where concept is-a #514331000000104  // Adult Safeguarding Referral
* include codes from system SNOMED_CT where concept is-a #65108000  // At risk for violence
//* include codes from system SNOMED_CT where concept is-a #129709009 // At risk for self-directed violence (No longer ACTIVE)
* include codes from system SNOMED_CT where concept is-a #129707006 // At risk for other-directed violence
* include codes from system SNOMED_CT where concept is-a #919461000000108 //At risk of sexual exploitation
* include codes from system SNOMED_CT where concept is-a #1188261000000103 //At risk of criminal exploitation
* include codes from system SNOMED_CT where concept is-a #417430008 //Vulnerable adult
* include codes from system SNOMED_CT where concept is-a #129839007 //At risk for falls 
* include codes from system SNOMED_CT where concept is-a #401233007 //At risk for self-neglect
* include codes from system SNOMED_CT where concept is-a #22761000175104 //At increased risk for social isolation
* include codes from system SNOMED_CT where concept is-a #225444004 //At risk for suicide
* include codes from system SNOMED_CT where concept is-a #761571000000106 //At risk of financial abuse
* include codes from system SNOMED_CT where concept is-a #1098411000000108 //Notification to adult safeguarding team of missing adult
* include codes from system SNOMED_CT where concept is-a #365867006 //Finding of legal status of patient
//Locally defined codes:
* include codes from system Interweave-FlagType

CodeSystem: InterweaveFlagType
Id: Interweave-FlagType
Title: "InterweaveFlagType"
Description: "The type of social care flag which can be placed against a person."
* ^name = "InterweaveFlagType"
* ^content = #complete
* ^caseSensitive = true
* ^experimental = false
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^url = "https://fhir.interweavedigital.nhs.uk/CodeSystem/Interweave-FlagType"

* #ABUSIVE "Know to be abusive"
* #ALPERP "Alleged perpetrator"
* #COMM "Communication"
* #COVID19 "COVID-19"
* #DOLS	"Deprivation of Liberty Safeguards"
* #DOL "Deprivation of Liberty (sometimes called 'Community DoL')"
* #EOL "End of life"
* #HCU "Home Checks for the Ukraine"
* #HDISCH "Hospital Discharge"
* #MANHAN "Manual Handling/Lifting risk"
* #MAPPA "Multiple Agency Public Protection Arrangements"
* #MARAC "Multi-Agency Risk Assessment Conferences"
* #MEAM	"Making Every Adult Matter referral"
* #MIGR	"Migrated risk"
* #NVU "Not to be visited unaccompanied"
* #OTH "Other"
* #RFO "Risk from specified others"
* #RNENG "Risk of Non-engagement/Non-compliance"
* #RTC "Risk to Children"
* #RTM "Risk to Men"
* #RTW "Risk to Women"
* #VARM	"Vunerable Adult Risk Management"
* #VISIT "Visiting"
