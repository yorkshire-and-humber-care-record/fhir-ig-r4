Extension: ExtensionUKCoreDeviceReference
Id: Extension-UKCore-DeviceReference
Title: "Extension UK Core DeviceReference"
Description: "This extension extends the DiagnosticReport reference elements, in order to allows a Device to be referenced where it would otherwise be unavailable."
Context: DiagnosticReport.performer, DiagnosticReport.resultsInterpreter
* ^version = "1.1.0"
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This is a use case from Wellbeing Software to allow for imaging studies to be (selectively) sent to a 3rd party AI service for evaluation, with the outcome then being part of the input to the (human) reporter."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* . ^short = "An additional Device reference for a DiagnosticReport."
* . ^definition = "An additional Device reference for a DiagnosticReport, to allow Software as a Medical Device to perform / interpret a DiagnosticReport"
* value[x] 1..
* value[x] only Reference(Device)
* value[x] ^short = "An additional Device reference for a DiagnosticReport."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-DeviceReference"