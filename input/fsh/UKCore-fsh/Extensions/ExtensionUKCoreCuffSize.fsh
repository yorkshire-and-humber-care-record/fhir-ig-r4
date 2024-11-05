//Alias: $UKCore-BloodPressure-CuffSize = https://fhir.hl7.org.uk/ValueSet/UKCore-BloodPressure-CuffSize

Extension: ExtensionUKCoreCuffSize
Id: Extension-UKCore-CuffSize
Title: "Extension UK Core Cuff Size"
Description: "An extension to record the cuff size of a sphygmomanometer."
Context: Device
* ^version = "1.0.0"
* ^date = "2023-09-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This extension is a clinical observation use case to record the cuff size used on a sphygmomanometer when the blood pressure was measured."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* . ^short = "An extension to record the cuff size of a sphygmomanometer."
* . ^definition = "This extension allows the recording of the cuff size of a sphygmomanometer used in a blood pressure reading."
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from UKCore-BloodPressure-CuffSize (preferred)
* value[x] ^short = "A set of codes to record the cuff size"
* value[x] ^binding.description = "A set of codes to record the cuff size"

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-CuffSize"