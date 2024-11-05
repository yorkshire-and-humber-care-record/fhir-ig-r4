Extension: ExtensionInterweaveSocialCareServiceCategory
Id: Extension-Interweave-SocialCareServiceCategory
Description: "An extension to add a categorisation to the type of service that a person is receiving"
* ^status = #draft
* ^version = "1.0.0"
* ^date = "2024-07-15"

* ^context[+].type = #element
* ^context[=].expression = "InterweaveSocialCareServiceCategory"

* . ..1
* . ^short = "Social Care Service Category"
* . ^definition = "Social Care Support Service Category: A categorisation of the type of service that a person is receiving."

* value[x] only CodeableConcept
* value[x] ^short = "A categorisation of the type of service that a person is receiving."

* value[x] from Interweave-SocialCareServiceCategory (required)
* insert Ruleset-CodingWithSystemCodeDisplay(value[x])