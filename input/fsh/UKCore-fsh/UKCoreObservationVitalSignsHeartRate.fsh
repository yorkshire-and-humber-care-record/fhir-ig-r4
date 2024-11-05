// Alias: $UKCore-Observation-VitalSigns = https://fhir.hl7.org.uk/StructureDefinition/UKCore-Observation-VitalSigns
// Alias: $UKCore-HeartRate = https://fhir.hl7.org.uk/ValueSet/UKCore-HeartRate

Profile: UKCoreObservationVitalSignsHeartRate
Parent: UKCore-Observation-VitalSigns
Id: UKCore-Observation-VitalSigns-HeartRate
Title: "UKCore Observation Vital Signs Heart Rate"
Description: "Defines the additional constraints and extensions on the UK Core Observation Vital Signs profile, for recording the pulse rate vital sign of a patient."
* ^date = "2023-09-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "To provide implementers with additional support when implementing heart rate monitoring and to provide a consistent structure to how the data is presented."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* code.coding[loinc] ^sliceName = "loinc"
* code.coding[loinc].code = #8867-4 (exactly)
//* code.coding contains snomedCT 0..1
* code.coding[snomedCT] from UKCore-HeartRate (preferred)
* code.coding[snomedCT].system 1..
* code.coding[snomedCT].code 1..
* value[x] 1..
* value[x] only Quantity
* value[x].unit 1..
* value[x].code = #/min (exactly)
* value[x].system = "http://unitsofmeasure.org" (exactly)
* value[x].unit = "per minute" (exactly)
* value[x].system 1..
* value[x].code 1..