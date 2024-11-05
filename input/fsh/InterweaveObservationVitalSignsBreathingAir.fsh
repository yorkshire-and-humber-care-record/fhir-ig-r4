Profile: InterweaveObservationVitalSignsBreathingAir
Parent: Interweave-Observation
Id: Interweave-Observation-VitalSigns-BreathingAir
Description: "Interweave VitalSigns Breathing Air Observation resource profile. - DRAFT"
Title: "InterweaveObservationVitalSignsBreathingAir"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* extension[bodyStructureR5] 0..0

* identifier.assigner only Reference(Interweave-Organization)

* status 1..1 MS
* status = #final (exactly)
* status ^short = "Fixed value of ‘final’."

* category[observationCategory].coding.code = #vital-signs (exactly)
* category[observationCategory].coding.display = "Vital Signs" (exactly)

* code 1..1 MS
* code.coding.system = "http://snomed.info/sct" (exactly)
* code.coding.code = #722742002 (exactly)
* code.coding.display = "Breathing room air" (exactly)

* value[x] only boolean
* value[x] ^short = "Actual result."
* valueBoolean 1..1 MS

* performer only Reference(Practitioner or PractitionerRole or CareTeam)
* insert Ruleset-ReferenceWithReferenceAndDisplay(performer)

* effective[x] only dateTime or instant

* device only Reference(Device)

* derivedFrom only Reference(Interweave-Observation or Interweave-QuestionnaireResponse)
///////////////////////////////////////
// --- Removed fields ---
///////////////////////////////////////
* dataAbsentReason 0..0
* bodySite 0..0
* interpretation 0..0
* specimen 0..0
* derivedFrom 0..0
* component 0..0
* referenceRange 0..0

* category.id 0..0
* category.coding.id 0..0
* subject.id 0..0