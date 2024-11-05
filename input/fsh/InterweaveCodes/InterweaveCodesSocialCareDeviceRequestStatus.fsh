Alias: $RequestStatus = http://hl7.org/fhir/request-status

ValueSet: InterweaveSocialCareDeviceRequestStatus
Id: Interweave-SocialCareDeviceRequestStatus
Description: "This valueset uses codes from the FHIR request-status code system to indicate the status of the request."
Title: "InterweaveSocialCareDeviceRequestStatus"
* ^name = "InterweaveSocialCareDeviceRequestStatus"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^experimental = false

* $RequestStatus#draft "Draft"
* $RequestStatus#active "Active"
* $RequestStatus#revoked "Revoked"
* $RequestStatus#completed "Completed"
* $RequestStatus#entered-in-error "Entered in Error"