// Alias: $UKCore-Observation-VitalSigns = https://fhir.hl7.org.uk/StructureDefinition/UKCore-Observation-VitalSigns
// Alias: $UKCore-RespirationRate = https://fhir.hl7.org.uk/ValueSet/UKCore-RespirationRate

Profile: UKCoreObservationVitalSignsRespirationRate
Parent: UKCore-Observation-VitalSigns
Id: UKCore-Observation-VitalSigns-RespirationRate
Title: "UKCore Observation Vital Signs Respiration Rate"
Description: "Defines the additional constraints and extensions on the UK Core Observation Vital Signs profile, in order to record the clinical observation of a respiratory rate of a patient."
* ^date = "2023-09-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "To provide implementers with additional support when implementing respiratory rate monitoring and to provide a consistent structure to how the data is presented.\r\n\r\nThe clinical observations within scope of this profile include all patient respiration: Unaided, Oxygen Concentrators, Nasal Cannula, CPAP Devices, Endotracheal Tube, and Mechanical Ventilator."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* code.coding[loinc] ^sliceName = "loinc"
* code.coding[loinc].code = #9279-1 (exactly)
* code.coding[snomedCT] from UKCore-RespirationRate (preferred)
* code.coding[snomedCT] ^sliceName = "snomedCT"
* code.coding[snomedCT].system 1..
* code.coding[snomedCT].code 1..
* value[x] 1..
* value[x] only Quantity
* value[x].value 1..
* value[x].unit 1..
* value[x].code = #/min (exactly)
* value[x].system = "http://unitsofmeasure.org" (exactly)
* value[x].unit = "per minute" (exactly)
* value[x].system 1..
* value[x].code 1..