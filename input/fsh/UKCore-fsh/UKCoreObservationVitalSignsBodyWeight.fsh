//Alias: $UKCore-Observation-VitalSigns = https://fhir.hl7.org.uk/StructureDefinition/UKCore-Observation-VitalSigns
//Alias: $UKCore-BodyWeightMeasurements = https://fhir.hl7.org.uk/ValueSet/UKCore-BodyWeightMeasurements

Profile: UKCoreObservationVitalSignsBodyWeight
Parent: UKCore-Observation-VitalSigns
Id: UKCore-Observation-VitalSigns-BodyWeight
Title: "UK Core Observation Vital Signs Body Weight"
Description: "Defines the additional constraints and extensions on the UK Core Observation Vital Signs profile, for the recording of the clinical observation of a patients weight"
* ^date = "2023-09-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "To provide implementers with additional support when implementing weight measuring and to provide a consistent structure to how the data is presented."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* code.coding[loinc] ^sliceName = "loinc"
* code.coding[loinc].code = #29463-7 (exactly)
* code.coding[snomedCT] from UKCore-BodyWeightMeasurements (preferred)
* code.coding[snomedCT] ^sliceName = "snomedCT"
* code.coding[snomedCT] ^binding.description = "A code from the SNOMED CT UK coding system for weight measurements."
* value[x] 1..
* value[x] only Quantity
* value[x].code = #kg (exactly)
* value[x].system = "http://unitsofmeasure.org" (exactly)
* value[x].unit = "kilogram" (exactly)

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/UKCore-Observation-VitalSigns-BodyWeight"