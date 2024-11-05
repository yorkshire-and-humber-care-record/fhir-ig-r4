Alias: $ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode

ValueSet: InterweaveEncounterClass
Id: Interweave-EncounterClass
Title: "InterweaveEncounterClass"
Description: "Encounter Class codes"
* ^name = "InterweaveEncounterClass"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^experimental = false

// Include the standard HL7 codes (which is a selection - replicate what the original ValueSet used here does)
* include codes from valueset http://terminology.hl7.org/ValueSet/v3-ActEncounterCode

// And add some of our own
* include codes from system Interweave-EncounterClass



CodeSystem: InterweaveEncounterClass
Id: Interweave-EncounterClass
Title: "InterweaveEncounterClass"
Description: "Additional Encounter Class codes"
* ^content = #complete
* ^caseSensitive = true
* ^experimental = false
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^url = "https://fhir.interweavedigital.nhs.uk/CodeSystem/Interweave-EncounterClass"


* #GROUPING "Grouping of related Encounters"
* #111 "NHS 111 encounter"
* #999-EPR "999 EPR encounter"
* #999-CAD "999 CAD encounter"
* #PTS "patient transport service encounter"
* #EMER-RETURN-U "ED Unplanned Return Visit"
* #EMER-RETURN-P "ED Planned Return Visit"