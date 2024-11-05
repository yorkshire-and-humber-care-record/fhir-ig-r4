Extension: ExtensionInterweaveSocialCarePrimarySupportReason
Id: Extension-Interweave-SocialCarePrimarySupportReason
Description: "Flag to indicate whether this is the primary support reason"
* ^status = #draft
* ^version = "1.0.0"
* ^date = "2024-07-15"

* ^context[+].type = #element
* ^context[=].expression = "Condition"

* . ..1
* . ^short = "Flag to indicate whether this is the primary support reason"
* . ^definition = "Flag to indicate whether this is the primary support reason"

* value[x] only boolean
* value[x] ^short = "Flag to indicate whether this is the primary support reason"
* value[x] ^definition = "Flag to indicate whether this is the primary support reason"