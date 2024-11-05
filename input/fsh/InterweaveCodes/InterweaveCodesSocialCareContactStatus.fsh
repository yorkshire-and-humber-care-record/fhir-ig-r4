Alias: $ContactStatus = http://hl7.org/fhir/request-status

ValueSet: InterweaveSocialCareContactStatus
Id: Interweave-SocialCareContactStatus
Description: "This valueset uses codes from the FHIR request-status code system to indicate the status of the contact."
Title: "InterweaveSocialCareContactStatus"
* ^name = "InterweaveSocialCareContactStatus"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^experimental = false

* $ContactStatus#active "Active"
* $ContactStatus#completed "Completed"
* $ContactStatus#revoked "Revoked"
* $ContactStatus#entered-in-error "Entered in Error"