Extension: ExtensionInterweaveSocialCareRequesterType
Id: Extension-Interweave-SocialCareRequesterType
Description: "An extension to add a the type of person contacting/make a request to, social care."
* ^status = #active
* ^version = "1.0.0"
* ^date = "2024-07-15"

* ^context[+].type = #element
* ^context[=].expression = "InterweaveSocialCareContact"

* . ..1
* . ^short = "Social Care Requester Type"
* . ^definition = "Social Care Support Requester: The type of person who has either placed a request or made contact with social care"

* value[x] only CodeableConcept
* value[x] ^short = "The type of person who has either placed a request or made contact with social care"

* value[x] from Interweave-SocialCareRequesterType (extensible)
* insert Ruleset-CodingWithSystemCodeDisplay(value[x])