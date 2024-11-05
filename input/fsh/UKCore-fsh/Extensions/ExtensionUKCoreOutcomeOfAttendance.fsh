Alias: $UKCore-OutcomeOfAttendance = https://fhir.hl7.org.uk/ValueSet/UKCore-OutcomeOfAttendance

Extension: ExtensionUKCoreOutcomeOfAttendance
Id: Extension-UKCore-OutcomeOfAttendance
Title: "Extension UK Core Outcome Of Attendance"
Description: "An extension to support the outcome of an Outpatient attendance."
Context: Encounter
* ^version = "2.2.0"
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This extension extends the Encounter Resource to support the exchange of information representing the outcome of an Outpatient attendance."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* . ..1
* . ^short = "An extension to record the outcome of an outpatient attendance"
* . ^definition = "An extension to record the outcome of an outpatient attendance."
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $UKCore-OutcomeOfAttendance (extensible)
* value[x] ^short = "The outcome of an outpatient attendance"
* value[x] ^definition = "The outcome of an outpatient attendance."
* value[x] ^binding.description = "The outcome of an outpatient attendance"

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-OutcomeOfAttendance"