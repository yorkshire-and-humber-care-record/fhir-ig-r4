Profile: InterweaveObservationAssessmentScore
Parent: Interweave-Observation
Id: Interweave-Observation-AssessmentScore
Description: "Interweave Observation AssessmentScore resource profile - DRAFT."
Title: "InterweaveObservationAssessmentScore"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* status 1..1 MS
* status = #final (exactly)

* category 1..1 MS
* category[observationCategory].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
* category[observationCategory].coding.code = #survey (exactly)
* category[observationCategory].coding.display = "Survey" (exactly)

* insert Ruleset-CodingWithSystemCodeDisplay(interpretation)

///////////////////////////////////////
// --- Removed fields ---
///////////////////////////////////////

* dataAbsentReason 0..0
* extension[Extension-Interweave-ValuePrecision] 0..0
* bodySite 0..0
* specimen 0..0
* component 0..0