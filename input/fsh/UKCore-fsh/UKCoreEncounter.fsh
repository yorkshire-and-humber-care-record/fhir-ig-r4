Alias: $Extension-UKCore-DischargeMethod = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-DischargeMethod
Alias: $Extension-UKCore-EmergencyCareDischargeStatus = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-EmergencyCareDischargeStatus
Alias: $Extension-UKCore-LegalStatus = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-LegalStatus
Alias: $Extension-UKCore-OutcomeOfAttendance = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-OutcomeOfAttendance
Alias: $Extension-UKCore-AdmissionMethod = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-AdmissionMethod
Alias: $UKCore-EncounterType = https://fhir.hl7.org.uk/ValueSet/UKCore-EncounterType
Alias: $UKCore-CareSettingType = https://fhir.hl7.org.uk/ValueSet/UKCore-CareSettingType
Alias: $UKCore-SourceOfAdmission = https://fhir.hl7.org.uk/ValueSet/UKCore-SourceOfAdmission
Alias: $UKCore-DischargeDestination = https://fhir.hl7.org.uk/ValueSet/UKCore-DischargeDestination
Alias: $UKCore-EncounterLocationType = https://fhir.hl7.org.uk/ValueSet/UKCore-EncounterLocationType

Profile: UKCoreEncounter
Parent: Encounter
Id: UKCore-Encounter
Title: "UK Core Encounter"
Description: "This profile defines the UK constraints and extensions on the International FHIR resource [Encounter](https://hl7.org/fhir/R4/Encounter.html)."
* ^version = "2.5.0"
* ^status = #active
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This profile allows exchange of information about an interaction between an individual and healthcare providers for the purpose of providing healthcare services or assessing the health status of an individual."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* extension contains
    $Extension-UKCore-DischargeMethod named dischargeMethod 0..1 and
    $Extension-UKCore-EmergencyCareDischargeStatus named emergencyCareDischargeStatus 0..1 and
    $Extension-UKCore-LegalStatus named legalStatus 0..* and
    $Extension-UKCore-OutcomeOfAttendance named OutcomeOfAttendance 0..1
* extension[dischargeMethod] ^short = "An extension to support the method of discharge from a hospital."
* extension[dischargeMethod] ^definition = "This extension has been developed to demonstrate the representation of the method by which a patient was discharged from hospital."
* extension[emergencyCareDischargeStatus] ^short = "An extension to support the status of an individual on discharge from an Emergency Care Department."
* extension[emergencyCareDischargeStatus] ^definition = "This extension has been developed to demonstrate the representation of the status of a patient on discharge from an Emergency Care Department."
* extension[legalStatus] ^short = "Information relating to a patient's legal status on admission or discharge."
* extension[legalStatus] ^definition = "Information relating to a patient's legal status on admission or discharge."
* extension[OutcomeOfAttendance] ^short = "An extension to support the outcome of an Outpatient attendance."
* extension[OutcomeOfAttendance] ^definition = "This extension has been developed to demonstrate the representation of the outcome of an Outpatient attendance."
* identifier MS
* identifier ^short = "Identifier(s) by which this encounter is known."
* status MS
* status ^short = "The status of this encounter: planned | arrived | triaged | in-progress | onleave | finished | cancelled | entered-in-error | unknown"
* class MS
* class ^short = "Concepts representing classification of patient encounter such as ambulatory (outpatient), inpatient, emergency, home health or others due to local variations."
* type from $UKCore-EncounterType (preferred)
* type ^binding.description = "A code from the SNOMED Clinical Terminology UK coding system that describes an encounter between a care professional and the patient (or patient's record)."
* serviceType from $UKCore-CareSettingType (preferred)
* serviceType ^binding.description = "Any code from the SNOMED CT UK Refset with fully specified name 'Services simple reference set (foundation metadata concept)' with Refset Id 1127531000000102."
* subject MS
* subject ^short = "The patient or group present at the encounter."
* participant MS
* participant ^short = "The list of people responsible for providing the service."
* reasonCode MS
* reasonCode ^short = "Reason the encounter takes place, expressed as a code. For admissions, this can be used for a coded admission diagnosis."
* reasonReference MS
* reasonReference ^short = "Reason the encounter takes place, expressed as a reference to a Condition, Procedure, Observation, or ImmunizationRecommendation."
* hospitalization.extension contains $Extension-UKCore-AdmissionMethod named admissionMethod 0..1
* hospitalization.extension[admissionMethod] ^short = "An extension to support the method by which an individual was admitted into hospital."
* hospitalization.extension[admissionMethod] ^definition = "This extension has been developed to demonstrate the representation of the method by which a patient was admitted to hospital."
* hospitalization.extension[admissionMethod] ^isModifier = false
* hospitalization.admitSource from $UKCore-SourceOfAdmission (preferred)
* hospitalization.admitSource ^binding.description = "The source of admission to a Hospital Provider Spell or a Nursing Episode when the Patient is in a Hospital Site or a Care Home."
* hospitalization.dischargeDisposition from $UKCore-DischargeDestination (preferred)
* hospitalization.dischargeDisposition ^binding.description = "The destination of a Patient on completion of a Hospital Provider Spell, or a note that the Patient died or was a still birth."
* location.physicalType from $UKCore-EncounterLocationType (preferred)
* location.physicalType ^binding.description = "A set of codes that define the physical type of location where an encounter takes place."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/UKCore-Encounter"