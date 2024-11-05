Extension: ExtensionUKCoreDiagnosticReportSupportingInfo
Id: Extension-UKCore-DiagnosticReportSupportingInfo
Title: "Extension UK Core Diagnostic Report Supporting Info"
Description: "An extension to support adding additional info supporting the diagnostic report."
Context: DiagnosticReport
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.supportingInfo"
* ^version = "1.0.0"
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This is a Pathology use case to support the backporting of R5 functionality to support adding additional supporting information that was used in the creation of the diagnostic report."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* . ^short = "Additional information supporting the diagnostic report."
* . ^definition = "This backbone element contains supporting information that was used in the creation of the report not included in the results already included in the report."
* extension 1..
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    type 1..1 and
    reference 1..1
* extension[type].value[x] from http://terminology.hl7.org/ValueSet/v2-0936 (example)
* extension[type] ^short = "Supporting information role code."
* extension[type] ^definition = "The code value for the role of the supporting information in the diagnostic report."
* extension[type].value[x] 1..
* extension[type].value[x] only CodeableConcept
* extension[type].value[x] from http://terminology.hl7.org/ValueSet/v2-0936 (example)
* extension[reference] ^short = "Who or what participated in the activities related to the family member history."
* extension[reference] ^definition = "The reference for the supporting information in the diagnostic report."
* extension[reference].value[x] 1..1
* extension[reference].value[x] only Reference(Procedure or Observation or DiagnosticReport)
* url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.supportingInfo" (exactly)