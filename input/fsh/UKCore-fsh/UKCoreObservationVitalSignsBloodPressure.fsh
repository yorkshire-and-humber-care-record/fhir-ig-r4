// Alias: $UKCore-Observation-VitalSigns = https://fhir.hl7.org.uk/StructureDefinition/UKCore-Observation-VitalSigns
// Alias: $UKCore-Device-BloodPressure = https://fhir.hl7.org.uk/StructureDefinition/UKCore-Device-BloodPressure
// Alias: $UKCore-BloodPressure = https://fhir.hl7.org.uk/ValueSet/UKCore-BloodPressure
// Alias: $UKCore-BloodPressure-MeasurementMethod = https://fhir.hl7.org.uk/ValueSet/UKCore-BloodPressure-MeasurementMethod
// Alias: $UKCore-ObservationVitalSignsType = https://fhir.hl7.org.uk/ValueSet/UKCore-ObservationVitalSignsType
// Alias: $UKCore-BloodPressure-Systolic = https://fhir.hl7.org.uk/ValueSet/UKCore-BloodPressure-Systolic
// Alias: $UKCore-BloodPressure-Diastolic = https://fhir.hl7.org.uk/ValueSet/UKCore-BloodPressure-Diastolic

Profile: UKCoreObservationVitalSignsBloodPressure
Parent: UKCore-Observation-VitalSigns
Id: UKCore-Observation-VitalSigns-BloodPressure
Title: "UK Core Observation Vital Signs Blood Pressure"
Description: "Defines the additional constraints and extensions on the UK Core Observation Vital Signs profile, for the recording of blood pressure observations"
* ^date = "2023-09-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "To provide implementers with additional support when implementing blood pressure monitoring and to provide a consistent structure to how the data is presented."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* code.coding[loinc] ^sliceName = "loinc"
* code.coding[loinc].code = #85354-9 (exactly)
* code.coding[snomedCT] from UKCore-BloodPressure (preferred)
* code.coding[snomedCT] ^sliceName = "snomedCT"
* value[x] ..0
* method from UKCore-BloodPressure-MeasurementMethod (preferred)
* specimen ..0
* device only Reference(DeviceMetric or UKCore-Device-BloodPressure)
* component ..2
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code.text"
* component ^slicing.rules = #closed
* component.code from UKCore-ObservationVitalSignsType (preferred)
* component.code ^binding.description = "A code from the SNOMED Clinical Terminology UK coding system describing a type of vital sign."
// * component.code.coding ^slicing.discriminator.type = #value
// * component.code.coding ^slicing.discriminator.path = "system"
// * component.code.coding ^slicing.rules = #open
// * component.code.coding contains
//     loinc 1..1 and
//     snomedCT 1..*
// * component.code.coding[loinc] from VitalSigns (extensible)
// * component.code.coding[loinc].system = "http://loinc.org" (exactly)
// * component.code.coding[snomedCT] from UKCore-ObservationVitalSignsType (preferred)
// * component.code.coding[snomedCT] ^sliceName = "snomedCT"
// * component.code.coding[snomedCT] ^binding.description = "A code from the SNOMED Clinical Terminology UK coding system describing a type of observation for vital-signs"
// * component.code.coding[snomedCT].system = "http://snomed.info/sct" (exactly)
* component contains
    SystolicBP 1..1 and
    DiastolicBP 0..1
* component[SystolicBP].code.coding ^slicing.discriminator.type = #value
* component[SystolicBP].code.coding ^slicing.discriminator.path = "system"
* component[SystolicBP].code.coding ^slicing.rules = #open
* component[SystolicBP].code.coding contains 
    loinc 1..1 and
    snomedCT 1..*
* component[SystolicBP].code.coding[loinc].code = #8480-6 (exactly)
* component[SystolicBP].code.coding[loinc].display = "Systolic blood pressure" (exactly)
* component[SystolicBP].code.coding[snomedCT] from UKCore-BloodPressure-Systolic (preferred)
//* component[SystolicBP].code.coding[snomedCT] ^sliceName = "snomedCT"
* component[SystolicBP].code.text = "Systolic blood pressure" (exactly)
* component[SystolicBP].value[x] 1..
* component[SystolicBP].value[x] only Quantity
* component[SystolicBP].value[x].code = #mm[Hg] (exactly)
* component[SystolicBP].value[x].system = "http://unitsofmeasure.org" (exactly)
* component[SystolicBP].value[x].unit = "millimeter of mercury" (exactly)
* component[DiastolicBP].code.coding ^slicing.discriminator.type = #value
* component[DiastolicBP].code.coding ^slicing.discriminator.path = "system"
* component[DiastolicBP].code.coding ^slicing.rules = #open
* component[DiastolicBP].code.coding contains 
    loinc 1..1 and
    snomedCT 1..*
* component[DiastolicBP].code.coding[loinc].code = #8462-4 (exactly)
* component[DiastolicBP].code.coding[loinc].display = "Diastolic blood pressure" (exactly)
* component[DiastolicBP].code.coding[snomedCT] from UKCore-BloodPressure-Diastolic (preferred)
//* component[DiastolicBP].code.coding[snomedCT] ^sliceName = "snomedCT"
* component[DiastolicBP].code.text = "Diastolic blood pressure" (exactly)
* component[DiastolicBP].value[x] 1..
* component[DiastolicBP].value[x] only Quantity
* component[DiastolicBP].value[x].code = #mm[Hg] (exactly)
* component[DiastolicBP].value[x].system = "http://unitsofmeasure.org" (exactly)
* component[DiastolicBP].value[x].unit = "millimeter of mercury" (exactly)