Alias: $Status = http://hl7.org/fhir/task-status

ValueSet: InterweaveSocialCareAssessmentStatus
Id: Interweave-SocialCareAssessmentStatus
Description: "This valueset uses codes from the FHIR task-status code system to indicate the status of the assessment."
Title: "InterweaveSocialCareAssessmentStatus"
* ^name = "InterweaveSocialCareAssessmentStatus"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^experimental = false

* $Status#accepted "Accepted"
* $Status#in-progress "In Progress"
* $Status#completed "Completed"
* $Status#entered-in-error "Entered in Error"
* $Status#cancelled "Cancelled"