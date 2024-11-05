Extension: ExtensionInterweaveSocialCareAssessmentOutcome
Id: Extension-Interweave-SocialCareAssessmentOutcome
Description: "An extension to add a coded value for the outcome of an assessment."
* ^status = #draft
* ^version = "1.0.0"
* ^date = "2024-07-15"

* ^context[+].type = #element
* ^context[=].expression = "InterweaveSocialCareAssessment"

* . ..*
* . ^short = "Social Care Assessment Outcome"
* . ^definition = "Social Care Assessment Outcome: The outcome of the assessment."

* value[x] only CodeableConcept
* value[x] ^short = "The outcome of the assessment"

* value[x] from Interweave-SocialCareAssessmentOutcome (required)
* insert Ruleset-CodingWithSystemCodeDisplay(value[x])