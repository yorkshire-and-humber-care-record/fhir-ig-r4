Alias: $Extension-UKCore-RecordingSetting = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-RecordingSetting
Alias: $Extension-bodyPosition = http://hl7.org/fhir/StructureDefinition/observation-bodyPosition
Profile: UKCoreObservationVitalSigns
Parent: UKCore-Observation
Id: UKCore-Observation-VitalSigns
Title: "UK Core Observation Vital Signs"
Description: "Defines the observation constraints and extensions on the UK Core Observation resource for the minimal set of data to query and retrieve clinical observation vital signs information."
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This profile allows exchange of internationally FHIR compliant vital signs information based on measurements and simple assertions made about an individual. Where a more constrained derived profile exists, it should be used instead of this profile."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* obeys ukcore-obs-vs-001
* extension contains $Extension-bodyPosition named bodyPosition 0..1 and 
     $Extension-UKCore-RecordingSetting named recordingSetting 0..* 
// * extension[bodyPosition] only ObsBodyPosition
// * extension[bodyPosition] ^sliceName = "bodyPosition"
* extension[bodyPosition] ^short = "The patients body position when the vital signs observation was recorded."
* extension[bodyPosition] ^isModifier = false
* extension[bodyPosition].value[x] from UKCore-BodyPosition (preferred)
// * extension[recordingSetting] only Extension-UKCore-RecordingSetting
// * extension[recordingSetting] ^sliceName = "recordingSetting"
* extension[recordingSetting] ^short = "Records whether the vital signs observation was performed in a clinical or non clinical setting."
* extension[recordingSetting] ^isModifier = false
* status = #final (exactly)
* status ^short = "A status of `final` SHALL be present."
* category 1..1
* category ^short = "A category of `vital-signs` SHALL be present."
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
* category.coding.code = #vital-signs (exactly)
* code 1..1
* code ^short = "The type of vital signs observation (code / type)."
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains 
    loinc 1..1 and
    snomedCT 1..*
* code.coding[loinc] from VitalSigns (extensible)
* code.coding[loinc] ^short = "A LOINC \"magic code\" describing the type of observation SHALL be present."
* code.coding[loinc].system = "http://loinc.org" (exactly)
* code.coding[snomedCT] from UKCore-ObservationVitalSignsType (preferred)
//* code.coding[snomedCT] ^sliceName = "snomedCT"
* code.coding[snomedCT] ^short = "A SNOMED CT concept describing the type of observation SHALL be present."
* code.coding[snomedCT] ^binding.description = "A code from the SNOMED Clinical Terminology UK coding system describing a type of observation"
* code.coding[snomedCT].system = "http://snomed.info/sct" (exactly)
* subject 1..
* subject ^short = "Who or what the observation relates to SHALL be present."
* effective[x] 1..
* effective[x] ^short = "A clinically relevant time / time-period for observation SHALL be present."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/UKCore-Observation-VitalSigns"

Invariant: ukcore-obs-vs-001
Description: "`code.coding` SHALL include a LOINC \"magic code\""
* severity = #error
* expression = "code.coding.where(system='http://loinc.org').exists()"