Extension: ExtensionUKCoreDeathNotificationStatus
Id: Extension-UKCore-DeathNotificationStatus
Title: "Extension UK Core Death Notification Status"
Description: "The patient's death notification status."
Context: Patient
* ^version = "2.2.0"
* ^date = "2023-12-07"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This extension extends the Patient resource to support the exchange of the patient's death notification status."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* . ..1
* . ^short = "The patient's death notification status."
* . ^definition = "The patient's death notification status."
* extension contains
    deathNotificationStatus 1..1 and
    systemEffectiveDate 0..1
* extension[deathNotificationStatus] ^short = "The patient's death notification status."
* extension[deathNotificationStatus] ^definition = "The patient's death notification status."
* extension[deathNotificationStatus].value[x] 1..
* extension[deathNotificationStatus].value[x] only CodeableConcept
* extension[deathNotificationStatus].value[x] from UKCore-DeathNotificationStatus (extensible)
* extension[deathNotificationStatus].value[x] ^short = "The patient's death notification status."
* extension[deathNotificationStatus].value[x] ^definition = "The patient's death notification status."
* extension[systemEffectiveDate] ^short = "System effective date for patient's death notification status."
* extension[systemEffectiveDate] ^definition = "System effective date for patient's death notification status."
* extension[systemEffectiveDate].value[x] 1..
* extension[systemEffectiveDate].value[x] only dateTime
* extension[systemEffectiveDate].value[x] ^short = "System effective date for patient's death notification status."
* extension[systemEffectiveDate].value[x] ^definition = "System effective date for patient's death notification status."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-DeathNotificationStatus"