Alias: $UKCore-ACVPU = https://fhir.hl7.org.uk/ValueSet/UKCore-ACVPU

Profile: UKCoreObservationACVPU
Parent: UKCore-Observation
Id: UKCore-Observation-ACVPU
Title: "UK Core Observation ACVPU"
Description: "Defines the additional constraints and extensions on the UK Core Observation profile, to record clinical observations about a patients level of consciousness."
* ^version = "1.0.0"
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "To provide implementers with additional support when implementing gathering of a patients ACVPU (level of consciousness) status, and to provide a consistent structure to how the data is presented."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* status = #final (exactly)
* category 1..1
* code.coding.code = #1104441000000107 (exactly)
* subject 1..
* effective[x] 1..
* value[x] only CodeableConcept
* value[x] from $UKCore-ACVPU (preferred)
* component ..0

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/UKCore-Observation-ACVPU"