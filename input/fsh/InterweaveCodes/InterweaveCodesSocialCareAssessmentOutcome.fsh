ValueSet: InterweaveSocialCareAssessmentOutcome
Id: Interweave-SocialCareAssessmentOutcome
Description: "Defines the set of codes that can be used to identify the assessment outcome. 
                These have been derived from the Event Outcome field of the V5 Adult Social Care - Client Level Data Specification"
Title: "InterweaveSocialCareAssessmentOutcome"
* ^name = "InterweaveSocialCareAssessmentOutcome"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^experimental = false
* include codes from system Interweave-SocialCareAssessmentOutcome


CodeSystem: InterweaveSocialCareAssessmentOutcome
Id: Interweave-SocialCareAssessmentOutcome
Description: "The social care assessment outcome."
Title: "InterweaveSocialCareAssessmentOutcome"
* ^name = "InterweaveSocialCareAssessmentOutcome"
* ^content = #complete
* ^caseSensitive = true
* ^experimental = false
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^url = "https://fhir.interweavedigital.nhs.uk/CodeSystem/Interweave-SocialCareAssessmentOutcome"


* #PRO-R "Progress to Reablement/ST-Max"
* #PRO-ASS "Progress to Assessment"
* #ADMH	"Admitted to hospital"
* #PRO-RASS	"Progress to Re-assessment/Unplanned Review"
* #PRO-SUP "Progress to Support Planning / Services"
* #PRO-EOL "Progress to End of Life Care"
* #NCP "No change in package"
* #SEP "Service ended as planned"
* #NFA-MALA	"NFA - Moved to another LA"
* #NFA-1NFC	"NFA - 100% NHS funded care"
* #NFA-SFC "NFA - Self-funded client (inc 12wk disregard)"
* #NFA-SD "NFA - Support declined"
* #NFA-IA "NFA - Information & Advice / Signposting only"
* #NFA-D "NFA - Deceased"
* #NFA-NSO "NFA - No services offered: Other reason"
* #NFA-SEO "NFA - Support ended: Other reason"
* #NFA-OTH "NFA - Other"
* #PRO-FA "Progress to financial assessment"
* #POS "Provision of service"
* #DNH-SL "Data Not Held- System Level"
* #DNH-IL "Data Not Held-Individual Level"
* #OTH "Other"