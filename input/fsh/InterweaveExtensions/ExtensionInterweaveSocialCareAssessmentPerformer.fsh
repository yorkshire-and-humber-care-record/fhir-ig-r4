Extension: ExtensionInterweaveSocialCareAssessmentPerformer
Id: Extension-Interweave-SocialCareAssessmentPerformer
Description: "A reference to an practitioner which either performed, is performing or is going to perform the assessment."
* ^status = #draft
* ^version = "1.0.0"
* ^date = "2024-07-15"

* ^context[+].type = #element
* ^context[=].expression = "Task"

* . ..1
* . ^short = "Reference to a practioner performing the assessment."
* . ^definition = "A reference to an practitioner which either performed, is performing or is going to perform the assessment."

* value[x] only Reference(Interweave-Practitioner)
* value[x] ^short = "Reference to a practioner performing the assessment."
* value[x] ^definition = "A reference to an practitioner which either performed, is performing or is going to perform the assessment."