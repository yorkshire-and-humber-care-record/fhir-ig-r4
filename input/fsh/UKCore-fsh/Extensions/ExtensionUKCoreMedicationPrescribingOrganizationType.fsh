Extension: ExtensionUKCoreMedicationPrescribingOrganizationType
Id: Extension-UKCore-MedicationPrescribingOrganizationType
Title: "Extension UK Core Medication Prescribing Organization Type"
Description: "This describes the type of organisation or setting responsible for authorising and issuing a medication, but not the organisation or setting delivering the patient care."
Context: MedicationStatement
* ^version = "1.1.0"
* ^date = "2022-08-26"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This extension extends the MedicationStatement resource to hold the type of organisation or setting responsible for authorising and issuing a medication."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* . ..1
* . ^short = "The type of organisation or setting responsible for authorising and issuing a medication"
* . ^definition = "This extension carries the type of organisation or setting responsible for authorising and issuing a medication."
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from UKCore-MedicationPrescribingOrganizationType (extensible)
* value[x] ^short = "The type of organisation or setting responsible for authorising and issuing a medication"
* value[x] ^definition = "A value for the type of organisation or setting responsible for authorising and issuing a medication."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-MedicationPrescribingOrganizationType"