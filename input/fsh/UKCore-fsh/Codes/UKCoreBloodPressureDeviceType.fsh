ValueSet: UKCoreBloodPressureDeviceType
Id: UKCore-BloodPressure-DeviceType
Title: "UK Core Blood Pressure Device Type"
Description: "A code from the SNOMED CT UK coding system for the type of device used to measure blood pressure. Selected from the SNOMED CT UK coding system: \r - 43770009 | Doppler device (physical object) \r - 469801002 | Invasive blood pressure monitor (physical object) \r - 258057004 | Non-invasive blood pressure monitor (physical object) \r - DescendantOrSelfOf 39690000 | Sphygmomanometer, device (physical object)"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2023-09-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^expansion.identifier = "f4015223-6370-49de-87ed-fbdf89651d6e"
* ^expansion.timestamp = "2023-10-31T21:25:00+00:00"
* ^expansion.total = 18
* ^expansion.offset = 0
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #309641003
* ^expansion.contains[=].display = "Aneroid sphygmomanometer"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #836391000
* ^expansion.contains[=].display = "Arrhythmia-detection sphygmomanometer"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #466093008
* ^expansion.contains[=].display = "Automatic-inflation electronic sphygmomanometer, non-portable"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #466086009
* ^expansion.contains[=].display = "Automatic-inflation electronic sphygmomanometer, portable, arm/wrist"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #13016001000001107
* ^expansion.contains[=].display = "Automatic-inflation electronic sphygmomanometer, portable, arm/wrist with pulse rhythm analyser"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #466139008
* ^expansion.contains[=].display = "Automatic-inflation electronic sphygmomanometer, portable, finger"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #43770009
* ^expansion.contains[=].display = "Doppler device"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #445949006
* ^expansion.contains[=].display = "Electronic sphygmomanometer"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #469801002
* ^expansion.contains[=].display = "Invasive blood pressure monitor"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #469311001
* ^expansion.contains[=].display = "Manual-inflation electronic sphygmomanometer, non-portable"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #469676006
* ^expansion.contains[=].display = "Manual-inflation electronic sphygmomanometer, portable"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #464069000
* ^expansion.contains[=].display = "Mercury manual sphygmomanometer"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #309642005
* ^expansion.contains[=].display = "Mercury sphygmomanometer"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #258057004
* ^expansion.contains[=].display = "Non-invasive blood pressure monitor"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #701682008
* ^expansion.contains[=].display = "Noninvasive ankle brachial pressure index measurement unit"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #39690000
* ^expansion.contains[=].display = "Sphygmomanometer"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #466753003
* ^expansion.contains[=].display = "Telemetric sphygmomanometer"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #13016101000001108
* ^expansion.contains[=].display = "WatchBP Home A blood pressure measurement and pulse rhythm analysis device (Microlife)"
* include codes from system SNOMED_CT_INT
    where constraint = "43770009 OR 469801002 OR 258057004 OR descendantOrSelfOf 39690000"

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-BloodPressure-DeviceType"