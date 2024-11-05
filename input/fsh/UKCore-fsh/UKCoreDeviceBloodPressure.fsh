//Alias: $UKCore-Device = https://fhir.hl7.org.uk/StructureDefinition/UKCore-Device
Alias: $Extension-UKCore-CuffSize = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-CuffSize
//Alias: $UKCore-BloodPressureDeviceType = https://fhir.hl7.org.uk/ValueSet/UKCore-BloodPressureDeviceType

Profile: UKCoreDeviceBloodPressure
Parent: UKCore-Device
Id: UKCore-Device-BloodPressure
Title: "UK Core Device Blood Pressure"
Description: "Defines the additional constraints and extensions on the UK Core Device profile, for specific devices relating to the recording of blood pressures."
* ^date = "2023-09-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "The purpose of this profile is to hold information about a device used to measure blood pressure, such as the type or sphygmomanometer, and cuff size used."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
//* extension[cuffSize] only $Extension-UKCore-CuffSize
* extension contains $Extension-UKCore-CuffSize named cuffSize 0..*
* extension[cuffSize] ^sliceName = "cuffSize"
* extension[cuffSize] ^short = "A code representing the cuff size of a sphygmomanometer."
* extension[cuffSize] ^isModifier = false
* type from UKCore-BloodPressure-DeviceType (preferred)