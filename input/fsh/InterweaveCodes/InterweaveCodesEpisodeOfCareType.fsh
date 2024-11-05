ValueSet: InterweaveEpisodeOfCareType
Id: Interweave-EpisodeOfCareType
Description: "Defines the set of EpisodeOfCare Type codes"
Title: "InterweaveEpisodeOfCareType"
* ^name = "InterweaveEpisodeOfCareType"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^experimental = false

* include codes from system Interweave-EpisodeOfCareType


CodeSystem: InterweaveEpisodeOfCareType
Id: Interweave-EpisodeOfCareType
Description: "EpisodeOfCare Type codes"
Title: "InterweaveEpisodeOfCareType"
* ^name = "InterweaveEpisodeOfCareType"
* ^content = #complete
* ^caseSensitive = true
* ^experimental = false
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^url = "https://fhir.interweavedigital.nhs.uk/CodeSystem/Interweave-EpisodeOfCareType"

* #PrimaryCare "Primary Care"
* #SecondaryCare "Secondary Care"
* #TertiaryCare "Tertiary Care"
* #CommunityHealth "Community Health"
* #VirtualWard "Virtual Ward"