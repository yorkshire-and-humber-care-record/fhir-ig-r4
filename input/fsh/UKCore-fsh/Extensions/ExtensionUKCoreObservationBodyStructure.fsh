Extension: ExtensionUKCoreObservationBodyStructure
Id: Extension-UKCore-ObservationBodyStructure
Title: "Extension UK Core Observation Body Structure"
Description: "An extension to support adding a BodyStructure on an Observation."
Context: Observation
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.bodyStructure"
* ^version = "1.0.0"
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This is a Pathology use case to support the backporting of R5 functionality to support adding a BodyStructure to an Observation."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* . ..1
* . ^short = "Observed body structure."
* . ^definition = "Indicates the body structure on the subject's body where the observation was made (i.e. the target site)."
* url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.bodyStructure" (exactly)
* value[x] 1..
* value[x] only Reference(BodyStructure)