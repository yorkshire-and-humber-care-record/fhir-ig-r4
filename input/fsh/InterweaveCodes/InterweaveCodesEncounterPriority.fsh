Alias: $ActPriority = http://terminology.hl7.org/ValueSet/v3-ActPriority

ValueSet: InterweaveEncounterPriority
Id: Interweave-EncounterPriority
Description: "Encounter priority codes"
Title: "InterweaveEncounterPriority"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^name = "InterweaveEncounterPriority"
* ^experimental = false


// Include the standard HL7 codes (which is a selection - replicate what the original ValueSet used here does)
* include codes from valueset http://terminology.hl7.org/ValueSet/v3-ActPriority

// And add some of our own
* include codes from system Interweave-EncounterPriority

CodeSystem: InterweaveEncounterPriority
Id: Interweave-EncounterPriority
Description: "Additional Encounter Priority codes"
Title: "InterweaveEncounterPriority"
* ^name = "InterweaveEncounterPriority"
* ^content = #complete
* ^caseSensitive = true
* ^experimental = false
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^url = "https://fhir.interweavedigital.nhs.uk/CodeSystem/Interweave-EncounterPriority"


* #2WW "two week wait" "Two Week Wait"