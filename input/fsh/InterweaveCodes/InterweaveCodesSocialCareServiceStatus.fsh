Alias: $EoCStatus = http://hl7.org/fhir/episode-of-care-status

ValueSet: InterweaveSocialCareServiceStatus
Id: Interweave-SocialCareServiceStatus
Description: "This is a value set defined by the FHIR project to indicate the status of the service."
Title: "InterweaveSocialCareServiceStatus"
* ^name = "InterweaveSocialCareServiceStatus"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^experimental = false

* $EoCStatus#planned "Planned"
* $EoCStatus#active "Active"
* $EoCStatus#onhold "On Hold"
* $EoCStatus#finished "Finished"
* $EoCStatus#entered-in-error "Entered in Error"