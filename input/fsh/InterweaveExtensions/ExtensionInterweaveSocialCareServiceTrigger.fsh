Extension: ExtensionInterweaveSocialCareServiceTrigger
Id: Extension-Interweave-SocialCareServiceTrigger
Description: "Reference to an assessment which triggered the start of the service."
* ^status = #draft
* ^version = "1.0.0"
* ^date = "2024-07-15"

* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare"

* . ..1
* . ^short = "Reference to an assessment which triggered the start of the service."
* . ^definition = "Reference to an assessment which triggered the start of the service."

* value[x] only Reference(Interweave-SocialCareAssessment)
* value[x] ^short = "Reference to an assessment which triggered the start of the service."
* value[x] ^definition = "Reference to an assessment which triggered the start of the service."