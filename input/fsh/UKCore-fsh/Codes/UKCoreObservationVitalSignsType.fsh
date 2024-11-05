// Alias: $UKCore-BloodPressure = https://fhir.hl7.org.uk/ValueSet/UKCore-BloodPressure
// Alias: $UKCore-BloodPressure-Diastolic = https://fhir.hl7.org.uk/ValueSet/UKCore-BloodPressure-Diastolic
// Alias: $UKCore-BloodPressure-Systolic = https://fhir.hl7.org.uk/ValueSet/UKCore-BloodPressure-Systolic
// Alias: $UKCore-BMI = https://fhir.hl7.org.uk/ValueSet/UKCore-BMI
//Alias: $UKCore-BodyHeightMeasurements = https://fhir.hl7.org.uk/ValueSet/UKCore-BodyHeightMeasurements
//Alias: $UKCore-BodyTemperature = https://fhir.hl7.org.uk/ValueSet/UKCore-BodyTemperature
//Alias: $UKCore-BodyWeightMeasurements = https://fhir.hl7.org.uk/ValueSet/UKCore-BodyWeightMeasurements
//Alias: $UKCore-HeadCircumferenceMeasurements = https://fhir.hl7.org.uk/ValueSet/UKCore-HeadCircumferenceMeasurements
//Alias: $UKCore-HeartRate = https://fhir.hl7.org.uk/ValueSet/UKCore-HeartRate
//Alias: $UKCore-OxygenSaturation = https://fhir.hl7.org.uk/ValueSet/UKCore-OxygenSaturation
//Alias: $UKCore-RespirationRate = https://fhir.hl7.org.uk/ValueSet/UKCore-RespirationRate

ValueSet: UKCoreObservationVitalSignsType
Id: UKCore-ObservationVitalSignsType
Title: "UK Core Observation Vital Signs Type"
Description: "A code from the SNOMED Clinical Terminology UK coding system for the type of vital sign."
* ^version = "1.1.0"
* ^status = #active
* ^date = "2024-02-11"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^expansion.identifier = "d66bc0c0-2f1a-446a-9372-fc9709a25c82"
* ^expansion.timestamp = "2024-03-11T15:49:00+00:00"
* ^expansion.total = 126
* ^expansion.offset = 0
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #169876006
* ^expansion.contains[=].display = "Birth head circumference"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #363812007
* ^expansion.contains[=].display = "Head circumference"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #363811000
* ^expansion.contains[=].display = "Head circumference measure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1269262007
* ^expansion.contains[=].display = "Head circumference of fetus"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #248396005
* ^expansion.contains[=].display = "Head circumference with caput"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #364589006
* ^expansion.contains[=].display = "Birth weight"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #27113001
* ^expansion.contains[=].display = "Body weight"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #363808001
* ^expansion.contains[=].display = "Body weight measure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #424927000
* ^expansion.contains[=].display = "Body weight with shoes"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #425024002
* ^expansion.contains[=].display = "Body weight without shoes"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #735395000
* ^expansion.contains[=].display = "Current body weight"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1162388008
* ^expansion.contains[=].display = "Dosing body weight"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #445541000
* ^expansion.contains[=].display = "Dry body weight"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #443245006
* ^expansion.contains[=].display = "Estimated weight using Broselow Luten paediatric weight estimation"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1162420002
* ^expansion.contains[=].display = "Post-dialysis body weight"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1162414003
* ^expansion.contains[=].display = "Pre-amputation estimated body weight"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1162416001
* ^expansion.contains[=].display = "Pre-amputation measured body weight"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1162421003
* ^expansion.contains[=].display = "Pre-dialysis body weight"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #784399000
* ^expansion.contains[=].display = "Self reported body weight"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1230277003
* ^expansion.contains[=].display = "Self reported peak body weight"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1162389000
* ^expansion.contains[=].display = "Self reported pre-pregnancy body weight"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #415882003
* ^expansion.contains[=].display = "Axillary temperature"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #300076005
* ^expansion.contains[=].display = "Basal body temperature"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #698832009
* ^expansion.contains[=].display = "Bladder temperature"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #386725007
* ^expansion.contains[=].display = "Body temperature"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #431807005
* ^expansion.contains[=].display = "Body temperature taken with digital thermometer"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #276885007
* ^expansion.contains[=].display = "Core body temperature"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1222808002
* ^expansion.contains[=].display = "Core body temperature measured in blood"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #415921007
* ^expansion.contains[=].display = "Forehead skin strip temperature"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #415922000
* ^expansion.contains[=].display = "Forehead temperature"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #415929009
* ^expansion.contains[=].display = "Groin temperature"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #698831002
* ^expansion.contains[=].display = "Nasopharyngeal temperature"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #415945006
* ^expansion.contains[=].display = "Oral temperature"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #307047009
* ^expansion.contains[=].display = "Rectal temperature"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #708499008
* ^expansion.contains[=].display = "Temperature of neonate at birth"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #415974002
* ^expansion.contains[=].display = "Tympanic temperature"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1003998008
* ^expansion.contains[=].display = "Arm demispan"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1153637007
* ^expansion.contains[=].display = "Body height"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #50373000
* ^expansion.contains[=].display = "Body height measure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1162418000
* ^expansion.contains[=].display = "Estimated body height"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #248337003
* ^expansion.contains[=].display = "Height from demispan"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1162417005
* ^expansion.contains[=].display = "Pre-amputation estimated body height"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1162392001
* ^expansion.contains[=].display = "Pre-amputation measured body height"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1149101003
* ^expansion.contains[=].display = "Recumbent body height"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1162419008
* ^expansion.contains[=].display = "Self reported body height"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1230278008
* ^expansion.contains[=].display = "Self reported peak adult body height"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #248335006
* ^expansion.contains[=].display = "Sitting height"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #248333004
* ^expansion.contains[=].display = "Standing height"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #60621009
* ^expansion.contains[=].display = "Body mass index"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #446974000
* ^expansion.contains[=].display = "BMI (body mass index) centile"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1153602009
* ^expansion.contains[=].display = "Body mass index for age percentile"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #896691000000102
* ^expansion.contains[=].display = "Child body mass index centile"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #926011000000101
* ^expansion.contains[=].display = "Down syndrome body mass index centile"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #407556006
* ^expansion.contains[=].display = "Lying systolic blood pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #163030003
* ^expansion.contains[=].display = "O/E - Systolic BP reading"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1162737008
* ^expansion.contains[=].display = "Self reported systolic blood pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #407554009
* ^expansion.contains[=].display = "Sitting systolic blood pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #400974009
* ^expansion.contains[=].display = "Standing systolic blood pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #72313002
* ^expansion.contains[=].display = "Systolic arterial pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #271649006
* ^expansion.contains[=].display = "Systolic blood pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1091811000000102
* ^expansion.contains[=].display = "Diastolic arterial pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #271650006
* ^expansion.contains[=].display = "Diastolic blood pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #407557002
* ^expansion.contains[=].display = "Lying diastolic blood pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #163031004
* ^expansion.contains[=].display = "O/E - Diastolic BP reading"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1162735000
* ^expansion.contains[=].display = "Self reported diastolic blood pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #407555005
* ^expansion.contains[=].display = "Sitting diastolic blood pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #400975005
* ^expansion.contains[=].display = "Standing diastolic blood pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #386534000
* ^expansion.contains[=].display = "Arterial blood pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #87179004
* ^expansion.contains[=].display = "Arterial pulse pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #37087001
* ^expansion.contains[=].display = "Arterial wedge pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #251068006
* ^expansion.contains[=].display = "Atrial pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #75367002
* ^expansion.contains[=].display = "Blood pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #392570002
* ^expansion.contains[=].display = "Blood pressure finding"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #71420008
* ^expansion.contains[=].display = "Central venous pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #366162006
* ^expansion.contains[=].display = "Central venous pressure - finding"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #392571003
* ^expansion.contains[=].display = "Finding of arterial pulse pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #301141002
* ^expansion.contains[=].display = "Finding of pulmonary arterial pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #165077006
* ^expansion.contains[=].display = "Intracardiac pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #386532001
* ^expansion.contains[=].display = "Invasive arterial pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #386533006
* ^expansion.contains[=].display = "Invasive blood pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #37476000
* ^expansion.contains[=].display = "Jugular venous pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #366163001
* ^expansion.contains[=].display = "Jugular venous pressure - finding"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #276760007
* ^expansion.contains[=].display = "Left atrial pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #163033001
* ^expansion.contains[=].display = "Lying blood pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #251076008
* ^expansion.contains[=].display = "Non-invasive arterial pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #723237002
* ^expansion.contains[=].display = "Non-invasive blood pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1036531000000108
* ^expansion.contains[=].display = "Non-invasive central blood pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #163020007
* ^expansion.contains[=].display = "O/E - blood pressure reading"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #371829003
* ^expansion.contains[=].display = "Pulmonary vein wedge pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #276755008
* ^expansion.contains[=].display = "Right atrial pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #335661000000109
* ^expansion.contains[=].display = "Self measured blood pressure reading"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #163035008
* ^expansion.contains[=].display = "Sitting blood pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #163034007
* ^expansion.contains[=].display = "Standing blood pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #364090009
* ^expansion.contains[=].display = "Systemic arterial pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #386536003
* ^expansion.contains[=].display = "Systemic blood pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #252076005
* ^expansion.contains[=].display = "Venous pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #366161004
* ^expansion.contains[=].display = "Venous pressure - finding"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #76882007
* ^expansion.contains[=].display = "Venous wedge pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #271625008
* ^expansion.contains[=].display = "Rate of spontaneous respiration"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #86290005
* ^expansion.contains[=].display = "Respiratory rate"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #250810003
* ^expansion.contains[=].display = "Total breath rate"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #422119006
* ^expansion.contains[=].display = "Brachial pulse rate"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #429525003
* ^expansion.contains[=].display = "Dorsalis pedis pulse rate"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #249043002
* ^expansion.contains[=].display = "Fetal heart rate"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #364075005
* ^expansion.contains[=].display = "Heart rate"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1089491000000108
* ^expansion.contains[=].display = "Heart rate at cardiac apex"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #399017001
* ^expansion.contains[=].display = "Heart rate on admission"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #429614003
* ^expansion.contains[=].display = "Posterior tibial pulse rate"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #78564009
* ^expansion.contains[=].display = "Pulse rate"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #843941000000100
* ^expansion.contains[=].display = "Radial pulse rate"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #444981005
* ^expansion.contains[=].display = "Resting heart rate"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #442476006
* ^expansion.contains[=].display = "Arterial oxygen saturation"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1097811000000106
* ^expansion.contains[=].display = "Arterial oxygen saturation on room air at rest"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1097821000000100
* ^expansion.contains[=].display = "Arterial oxygen saturation on supplemental oxygen at rest"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #103228002
* ^expansion.contains[=].display = "Blood oxygen saturation"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1017311000000104
* ^expansion.contains[=].display = "Blood oxygen saturation (calculated)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #442440005
* ^expansion.contains[=].display = "Capillary oxygen saturation"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #718059008
* ^expansion.contains[=].display = "Cerebral oxygen saturation"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #373638005
* ^expansion.contains[=].display = "Conjunctival oxygen saturation"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #442381003
* ^expansion.contains[=].display = "Intracardiac oxygen saturation"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #442386008
* ^expansion.contains[=].display = "Jugular bulb oxygen saturation"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #866661000000106
* ^expansion.contains[=].display = "Peripheral blood oxygen saturation on room air at rest"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #866681000000102
* ^expansion.contains[=].display = "Peripheral blood oxygen saturation on room air on exertion"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #866701000000100
* ^expansion.contains[=].display = "Peripheral blood oxygen saturation on supplemental oxygen at rest"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #866721000000109
* ^expansion.contains[=].display = "Peripheral blood oxygen saturation on supplemental oxygen on exertion"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #431314004
* ^expansion.contains[=].display = "Peripheral oxygen saturation"
* include codes from valueset UKCore-BloodPressure
* include codes from valueset UKCore-BloodPressure-Diastolic
* include codes from valueset UKCore-BloodPressure-Systolic
* include codes from valueset UKCore-BMI
* include codes from valueset UKCore-BodyHeightMeasurements
* include codes from valueset UKCore-BodyTemperature
* include codes from valueset UKCore-BodyWeightMeasurements
* include codes from valueset UKCore-HeadCircumferenceMeasurements
* include codes from valueset UKCore-HeartRate
* include codes from valueset UKCore-OxygenSaturation
* include codes from valueset UKCore-RespirationRate

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-ObservationVitalSignsType"