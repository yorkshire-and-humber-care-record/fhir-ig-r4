Alias: $Extension-UKCore-ConditionEpisode = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-ConditionEpisode
//Alias: $UKCore-ConditionCategory = https://fhir.hl7.org.uk/ValueSet/UKCore-ConditionCategory
//Alias: $UKCore-ConditionCode = https://fhir.hl7.org.uk/ValueSet/UKCore-ConditionCode

Profile: UKCoreCondition
Parent: Condition
Id: UKCore-Condition
Title: "UK Core Condition"
Description: "This profile defines the UK constraints and extensions on the International FHIR resource [Condition](https://hl7.org/fhir/R4/Condition.html)."
* ^version = "2.5.0"
* ^status = #active
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This profile allows recording of detailed information about a condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern. \r\n\r\nThe condition could be a point in time diagnosis in the context of an encounter, it could be an item on the practitioner’s problem list, or it could be a concern that doesn’t exist on the practitioner’s problem list. Often, a condition is about a clinician's assessment and assertion of a particular aspect of an individual's state of health. \r\n\r\nIt can be used to record information about a disease/illness identified from the application of clinical reasoning over the pathologic and pathophysiologic findings (diagnosis), or identification of health issues/situations that a practitioner considers harmful, potentially harmful and may be investigated and managed (problem), or other health issue/situation that may require ongoing monitoring and/or management (health issue/concern)."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* extension contains $Extension-UKCore-ConditionEpisode named conditionEpisode 0..*
* extension[conditionEpisode] ^short = "The episodicity value of the condition can be represented by one of the following codes: \\nfirst | new | review | end."
* clinicalStatus MS
* clinicalStatus ^short = "The clinical status of the condition."
* verificationStatus MS
* verificationStatus ^short = "The verification status to support the clinical status of the condition."
* category from UKCore-ConditionCategory (extensible)
* category ^binding.description = "A ValueSet to identify the category of a condition."
* severity MS
* severity ^short = "A subjective assessment of the severity of the condition as evaluated by the clinician."
* code MS
* code from UKCore-ConditionCode (preferred)
* code ^short = "Identification of the condition, problem or diagnosis."
* code ^binding.description = "A code from the SNOMED Clinical Terminology UK with the expression (<404684003 |Clinical finding| OR <413350009 |Finding with explicit context| OR <272379006 |Event|)."
* bodySite ^binding.strength = #preferred
* subject MS
* subject ^short = "Indicates the patient or group who the condition record is associated with."
* recorder MS
* recorder ^short = "Individual who recorded the record and takes responsibility for its content."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/UKCore-Condition"