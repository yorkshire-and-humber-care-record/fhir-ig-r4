Profile: InterweaveObservationNEWS2Score
Parent: Interweave-Observation-AssessmentScore
Id: Interweave-Observation-NEWS2Score
Description: "Interweave NEWS2 Score Observation resource profile. - DRAFT"
Title: "InterweaveObservationNEWS2Score"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

//* insert Ruleset-InterweaveBaseFields

* code 1..1 MS
* code.coding.system = "http://snomed.info/sct" (exactly)
* code.coding.code = #1104051000000101 (exactly)
* code.coding.display = "Royal College of Physicians NEWS2 (National Early Warning Score 2) total score" (exactly)

* value[x] only Quantity
* value[x] ^short = "Actual result."
* valueQuantity 1..1 MS