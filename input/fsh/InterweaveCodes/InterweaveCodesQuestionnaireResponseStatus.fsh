Alias: $QuestionnaireResponseStatus = http://hl7.org/fhir/questionnaire-answers-status

ValueSet: InterweaveQuestionnaireResponseStatus
Id: Interweave-QuestionnaireResponseStatus
Description: "Defines the set of codes that defines the lifecycle status of the questionnaire response."
Title: "InterweaveQuestionnaireResponseStatus"
* ^name = "InterweaveQuestionnaireResponseStatus"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"
* ^experimental = false

* $QuestionnaireResponseStatus#completed "Completed"
* $QuestionnaireResponseStatus#amended "Amended"
* $QuestionnaireResponseStatus#entered-in-error "Entered in Error"