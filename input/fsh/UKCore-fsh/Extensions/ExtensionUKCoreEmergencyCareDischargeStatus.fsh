Alias: $UKCore-EmergencyCareDischargeStatus = https://fhir.hl7.org.uk/ValueSet/UKCore-EmergencyCareDischargeStatus

Extension: ExtensionUKCoreEmergencyCareDischargeStatus
Id: Extension-UKCore-EmergencyCareDischargeStatus
Title: "Extension UK Core Emergency Care Discharge Status"
Description: "An extension to support the status of an individual on discharge from an Emergency Care Department."
Context: Encounter
* ^version = "2.1.0"
* ^date = "2022-01-07"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This extension extends the Encounter Resource to support the exchange of information representing the status of a patient on discharge from an Emergency Care Department."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* . ..1
* . ^short = "An extension used indicate the status of a patient on discharge from an Emergency Care Department"
* . ^definition = "An extension used indicate the status of a patient on discharge from an Emergency Care Department"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $UKCore-EmergencyCareDischargeStatus (preferred)
* value[x] ^short = "The status of a patient on discharge from an Emergency Care Department"
* value[x] ^definition = "The status of a patient on discharge from an Emergency Care Department."
* value[x] ^binding.description = "The status of a patient on discharge from an Emergency Care Department"

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-EmergencyCareDischargeStatus"