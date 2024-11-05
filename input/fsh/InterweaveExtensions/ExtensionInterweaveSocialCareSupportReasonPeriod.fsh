Extension: ExtensionInterweaveSocialCareSupportReasonPeriod
Id: Extension-Interweave-SocialCareSupportReasonPeriod
Description: "The period during which the person received support for this support reason."
* ^status = #draft
* ^version = "1.0.0"
* ^date = "2024-07-15"

* ^context[+].type = #element
* ^context[=].expression = "Condition"

* . ..1
* . ^short = "The period during which the person received support for this support reason."
* . ^definition = "The period during which the person received support for this support reason."

* value[x] only Period
* valuePeriod.start 1..1
* value[x] ^short = "The period during which the person received support for this support reason."
* value[x] ^definition = "The period during which the person received support for this support reason."