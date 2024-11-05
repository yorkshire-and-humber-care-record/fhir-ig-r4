Extension: ExtensionInterweaveServiceType
Id: Extension-Interweave-ServiceType
Description: "An extension to add UK Core Service Type to the resource."
* ^status = #draft
* ^version = "1.0.0"
* ^date = "2024-06-20"
* . ^short = "Specific type of service"
* . ^definition = "Broad categorization of the service that is to be provided (e.g. cardiology)."

* ^context[+].type = #element
* ^context[=].expression = "PractitionerRole"

* value[x] only CodeableConcept
* value[x] ^short = "Specific type of service"
// We also want to pre-adopt this value set from UK Core which is better than the original FHIR suggestion
// (More relevant to UK and better coverage of social care)
// It is based on SNOMED refset 1127531000000102: Services Simple Reference Set
* value[x] from UKCore-CareSettingType (preferred)
* insert Ruleset-CodingWithSystemCodeDisplay(value[x])