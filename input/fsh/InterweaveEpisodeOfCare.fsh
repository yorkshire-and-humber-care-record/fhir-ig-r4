Profile: InterweaveEpisodeOfCare
Parent: EpisodeOfCare
Id: Interweave-EpisodeOfCare
Description: "Interweave EpisodeOfCare resource profile - DRAFT."
Title: "InterweaveEpisodeOfCare"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

* identifier MS
* identifier.assigner only Reference(Interweave-Organization) 

* status MS

* statusHistory MS

* type 0..1
* type from Interweave-EpisodeOfCareType (preferred)
* type ^short = "PrimaryCare | SecondaryCare | TertiaryCare | CommunityHealth"

* diagnosis MS

* patient 1..1 MS 
* patient only Reference(Interweave-Patient)
* insert Ruleset-ReferenceWithReferenceAndDisplay(patient)
* patient ^short = "The patient who is the focus of this episode of care"

* period MS
* period.start 1..1 MS

* referralRequest MS

* careManager MS
* insert Ruleset-ReferenceWithReferenceAndDisplay(careManager)

* team MS

* account 0..0

* identifier.id 0..0
* identifier.extension 0..0
* statusHistory.id 0..0
* statusHistory.extension 0..0
* diagnosis.id 0..0
* diagnosis.extension 0..0
* patient.id 0..0
* patient.extension 0..0
* period.id 0..0
* period.extension 0..0
* careManager.id 0..0
* careManager.extension 0..0