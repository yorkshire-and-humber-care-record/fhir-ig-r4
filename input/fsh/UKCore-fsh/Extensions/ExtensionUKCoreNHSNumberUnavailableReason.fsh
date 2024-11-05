Extension: ExtensionUKCoreNHSNumberUnavailableReason
Id: Extension-UKCore-NHSNumberUnavailableReason
Title: "Extension UK Core NHS Number Unavailable Reason"
Description: "This extends the Patient resource to support the exchange of information about the reason why a patient does not have an NHS Number."
Context: Patient
* ^version = "1.0.0"
* ^date = "2023-04-28"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This extension is a Genomics use case to record why an NHS Number for the patient has not been provided within a test request. This differs from NHS Number trace status as this indicates reason."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* . ..1
* . ^short = "The reason why a patient does not have an NHS Number"
* . ^definition = "The reason why a patient does not have an NHS Number. For example if this patient is an overseas patient."
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from UKCore-NHSNumberUnavailableReason (extensible)
* value[x] ^short = "The reason why a patient does not have an NHS Number"
* value[x] ^definition = "The reason why a patient does not have an NHS Number. For example if this patient is an overseas patient."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-NHSNumberUnavailableReason"