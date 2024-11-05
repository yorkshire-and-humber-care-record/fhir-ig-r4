ValueSet: UKCoreDeviceType
Id: UKCore-DeviceType
Title: "UK Core Device Type"
Description: "A code from the SNOMED Clinical Terminology UK coding system that describes a type of device. Any code from the SNOMED CT UK 'Device Type' subset with subset original id 1361000000131; the corresponding SNOMED CT UK Refset fully specified name is 'Device type simple reference set (foundation metadata concept)' with Refset Id 999000401000000107."
* ^version = "1.1.0"
* ^status = #draft
* ^date = "2022-01-22"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* include codes from system SNOMED_CT_INT where constraint = "memberOf 999000401000000107"

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-DeviceType"