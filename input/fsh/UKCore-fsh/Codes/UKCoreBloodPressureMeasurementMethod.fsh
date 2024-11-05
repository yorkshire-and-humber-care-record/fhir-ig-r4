ValueSet: UKCoreBloodPressureMeasurementMethod
Id: UKCore-BloodPressure-MeasurementMethod
Title: "UK Core Blood Pressure Measurement Method"
Description: "A code for recording the method in which blood pressure was measured. Selected from the SNOMED CT UK coding system: \r - 37931006 | Auscultation (procedure) \r - 810061000000102 | Measurement of blood pressure using manual sphygmomanometer by auscultation over brachial artery (procedure) \r - 13385008 | Mediate auscultation (procedure) \r - 765172009 | Doppler ultrasound (procedure) \r - 113011001 | Palpation (procedure) \r - 31813000 | Vascular oscillometry (procedure) \r - descendantOrSelfOf 42826002 | Systemic arterial pressure monitoring (regime/therapy)"
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
* ^expansion.identifier = "309dfb0d-c16e-4fa8-a9cf-c596427aa572"
* ^expansion.timestamp = "2023-10-31T21:28:00+00:00"
* ^expansion.total = 10
* ^expansion.offset = 0
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #77938009
* ^expansion.contains[=].display = "Arterial pressure monitoring, invasive method"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #17146006
* ^expansion.contains[=].display = "Arterial pressure monitoring, non-invasive method"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #37931006
* ^expansion.contains[=].display = "Auscultation"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #765172009
* ^expansion.contains[=].display = "Doppler ultrasound"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #810061000000102
* ^expansion.contains[=].display = "Measurement of blood pressure using manual sphygmomanometer by auscultation over brachial artery"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #73002000
* ^expansion.contains[=].display = "Measurement of systemic arterial pressure"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #13385008
* ^expansion.contains[=].display = "Mediate auscultation"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #113011001
* ^expansion.contains[=].display = "Palpation"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #42826002
* ^expansion.contains[=].display = "Systemic arterial pressure monitoring"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #31813000
* ^expansion.contains[=].display = "Vascular oscillometry"
* include codes from system SNOMED_CT_INT
    where constraint = "37931006 OR 810061000000102 OR 13385008 OR 765172009 OR 113011001 OR 31813000 OR descendantOrSelfOf 42826002"

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-BloodPressure-MeasurementMethod"