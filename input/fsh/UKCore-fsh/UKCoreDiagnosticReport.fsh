Alias: $extension-DiagnosticReport.composition = http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition
Alias: $extension-DiagnosticReport.note = http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.note
Alias: $extension-DiagnosticReport.supportingInfo = http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.supportingInfo
Alias: $Extension-UKCore-DeviceReference = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-DeviceReference

Profile: UKCoreDiagnosticReport
Parent: DiagnosticReport
Id: UKCore-DiagnosticReport
Title: "UK Core DiagnosticReport"
Description: "This profile defines the UK constraints and extensions on the International FHIR resource [DiagnosticReport](https://hl7.org/fhir/R4/DiagnosticReport.html)."
* ^version = "2.4.0"
* ^status = #active
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This profile allows exchange of the findings and interpretation of diagnostic tests performed on individuals, groups of individuals, devices and locations and/or specimens derived from these. The report includes clinical context such as requesting and provider information and some mix of atomic results, images, textual and coded interpretations and formatted representation of diagnostic reports.\r\n\r\nNote: this profile SHALL NOT be used where a more specific UK Core profile exists."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* extension contains
    $extension-DiagnosticReport.composition named compositionReferenceR5 0..1 and
    $extension-DiagnosticReport.note named noteR5 0..* and
    $extension-DiagnosticReport.supportingInfo named supportingInfoR5 0..*
* extension[compositionReferenceR5] ^short = "A Composition reference for a DiagnosticReport. This is a R5 backport."
* extension[compositionReferenceR5] ^isModifier = false
* extension[compositionReferenceR5].value[x] ^short = "Reference to a Composition resource."
* extension[compositionReferenceR5].value[x] ^definition = "Reference to a Composition resource instance that provides structure for organizing the contents of the DiagnosticReport."
* extension[noteR5] ^short = "Comments about the diagnostic report. This is a R5 backport."
* extension[noteR5] ^isModifier = false
* extension[noteR5].value[x] ^definition = "May include general statements about the diagnostic report, or statements about significant, unexpected or unreliable results values contained within the diagnostic report, or information about its source when relevant to its interpretation."
* extension[supportingInfoR5] ^short = "Additional info supporting the diagnostic report. This is a R5 backport."
* extension[supportingInfoR5] ^isModifier = false
* extension[supportingInfoR5].extension 2..
* status MS
* status ^short = "The status of the diagnostic report."
* category MS
* category ^short = "A code that classifies the clinical discipline, department or diagnostic service that created the report."
* code MS
* code from UKCore-ReportCode (preferred)
* code ^short = "A code or name that describes this diagnostic report."
* subject MS
* subject ^short = "The subject of the report - usually, but not always, the patient."
* encounter MS
* encounter ^short = "Health care event when test ordered."
* issued MS
* issued ^short = "Clinically relevant time / time-period for report."
* performer.extension contains $Extension-UKCore-DeviceReference named deviceReference 0..1
* performer.extension[deviceReference] ^short = "A reference to a Device which interprets / performs the results of the DiagnosticReport."
* performer.extension[deviceReference] ^isModifier = false
* resultsInterpreter.extension contains $Extension-UKCore-DeviceReference named deviceReference 0..1
//* resultsInterpreter.extension[deviceReference] only $Extension-UKCore-DeviceReference
//* resultsInterpreter.extension[deviceReference] ^sliceName = "deviceReference"
* resultsInterpreter.extension[deviceReference] ^short = "A reference to a Device which interprets / performs the results of the DiagnosticReport."
* resultsInterpreter.extension[deviceReference] ^isModifier = false
* result MS
* result ^short = "Observations that are part of this diagnostic report."
* conclusionCode ^binding.strength = #preferred