Extension: ExtensionUKCoreRecordingSetting
Id: Extension-UKCore-RecordingSetting
Title: "Extension UK Core Recording Setting"
Description: "An extension to record the care setting in which an observation was taken."
Context: Observation
* ^version = "1.0.0"
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This extension is a clinical observation use case to record the care setting in which an observation was recorded in."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* . ^short = "An extension to record the care setting in which an observation was taken."
* . ^definition = "This extension allows the recording of the care setting in which an observation was taken."
* value[x] 1..
* value[x] only CodeableConcept
* value[x] ^short = "A set of codes to record the care setting"

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-RecordingSetting"