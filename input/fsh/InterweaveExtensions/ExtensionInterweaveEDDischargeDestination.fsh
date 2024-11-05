Extension: ExtensionInterweaveEDDischargeDestination
Id: Extension-Interweave-EDDischargeDestination
Description: "An extension to record the discharge destination of patients which have attended ED."
* ^status = #draft
* ^version = "1.0.0"
* ^date = "2024-05-20"

* . ..1
* . ^short = "Discharge destination of patients which have attended ED."
* . ^definition = "Discharge destination of patients which have attended ED represented using Snomed CT code."

* ^context[+].type = #element
* ^context[=].expression = "Encounter"

* value[x] only CodeableConcept
* value[x] ^short = "Discharge destination of patients which have attended ED."

// It is based on SNOMED refset 999003011000000105: Emergency care discharge destination simple reference set
* value[x] from Interweave-EDDischargeDestination (preferred)
* insert Ruleset-CodingWithSystemCodeDisplay(valueCodeableConcept)