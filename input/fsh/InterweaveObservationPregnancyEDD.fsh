Profile: InterweaveObservationPregnancyEDD
Parent: Interweave-Observation
Id: Interweave-Observation-Pregnancy-EDD
Description: "Interweave Pregnancy Estimated Delivery Date resource profile. - DRAFT"
Title: "InterweaveObservationPregnancyEDD"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* extension[bodyStructureR5] 0..0
* extension[valuePrecision] 0..0

* code 1..1 MS
* code from InterweavePregnancyEDDCode (required)
* insert Ruleset-CodingWithSystemCodeDisplay(code)

* status 1..1 MS
* status = #final (exactly)
* status ^short = "Fixed value of ‘final’."

* encounter ^short = "The encounter during which this observation is made."

* effective[x] only dateTime
* effective[x] 1..1 MS
* effective[x] ^short = "This is the time/time period during which the observation was taken."

* subject ^short = "The patient whose characteristics (direct or indirect) are described by the observation and into whose record the observation is placed."

* performer 0..* MS
* performer only Reference(Interweave-Practitioner or Interweave-PractitionerRole or CareTeam) 
* insert Ruleset-ReferenceWithReferenceAndDisplay(performer)
* performer ^short = "Who is responsible for the observation."

* value[x] only dateTime
* value[x] ^short = "Actual result."
* valueDateTime 1..1 MS

* note ^short = "Comments about the result"

* issued 0..0
* component 0..0
* method 0..0
* bodySite 0..0
* dataAbsentReason 0..0
* interpretation 0..0
* referenceRange 0..0
* specimen 0..0
* device 0..0

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Examples
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////