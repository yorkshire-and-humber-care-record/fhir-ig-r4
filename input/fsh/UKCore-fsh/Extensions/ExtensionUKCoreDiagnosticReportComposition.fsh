Extension: ExtensionUKCoreDiagnosticReportComposition
Id: Extension-UKCore-DiagnosticReportComposition
Title: "Extension UK Core Diagnostic Report Composition"
Description: "This extension allows a Reference to a Composition resource instance that provides structure for organizing the contents of the DiagnosticReport."
Context: DiagnosticReport
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* ^version = "1.1.0"
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This is a use case from Genomics to backport R5 functionality and align with HL7 EU laboratory IG."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* . ^short = "A Composition reference for a DiagnosticReport."
* . ^definition = "A Reference to a Composition resource instance that provides structure for organizing the contents of the DiagnosticReport."
* url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition" (exactly)
* value[x] 1..
* value[x] only Reference(Composition)
* value[x] ^short = "Reference to a Composition resource for the DiagnosticReport structure"
* value[x] ^definition = "The Composition provides structure to the content of the DiagnosticReport (and only contains contents referenced in the DiagnosticReport) - e.g., to order the sections of an anatomic pathology structured report."