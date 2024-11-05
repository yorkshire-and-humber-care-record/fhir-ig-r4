Extension: ExtensionInterweaveSocialCareSupportRole
Id: Extension-Interweave-SocialCareSupportRole
Description: "An extension to add a social care support role to a RelatedPerson."
* ^status = #active
* ^version = "1.0.0"
* ^date = "2024-07-15"

* ^context[+].type = #element   
* ^context[=].expression = "RelatedPerson" 

* . ..1
* . ^short = "Social Care Support Role"
* . ^definition = "Social Care Support Role: The role which a person plays in a service user's support"

* extension contains
   supportRoleType 1..1 MS and
   supportRolePeriod 0..1

* extension[supportRoleType].value[x] only CodeableConcept
* extension[supportRoleType].value[x] from Interweave-SocialCareSupportRole (required)
* extension[supportRoleType] ^short = "The role which a person plays in a service user's support"
* extension[supportRoleType] ^definition = "Social Care Support Role"

* extension[supportRolePeriod].value[x] only Period
* extension[supportRolePeriod] ^short = "The period during which the support role is active"
* extension[supportRolePeriod] ^definition = "Support role period."