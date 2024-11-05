//Alias: $UKCore-MedicationAdministrationCategory = https://fhir.hl7.org.uk/ValueSet/UKCore-MedicationAdministrationCategory
Alias: $UKCore-MedicationCode = https://fhir.hl7.org.uk/ValueSet/UKCore-MedicationCode
Alias: $UKCore-BodySite = https://fhir.hl7.org.uk/ValueSet/UKCore-BodySite
Alias: $UKCore-SubstanceOrProductAdministrationRoute = https://fhir.hl7.org.uk/ValueSet/UKCore-SubstanceOrProductAdministrationRoute
Alias: $UKCore-MedicationDosageMethod = https://fhir.hl7.org.uk/ValueSet/UKCore-MedicationDosageMethod

Profile: UKCoreMedicationAdministration
Parent: MedicationAdministration
Id: UKCore-MedicationAdministration
Title: "UK Core MedicationAdministration"
Description: "This profile defines the UK constraints and extensions on the International FHIR resource [MedicationAdministration](https://hl7.org/fhir/R4/MedicationAdministration.html)."
* ^version = "2.3.0"
* ^status = #active
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "The purpose of this profile is to describe the event of a patient consuming or otherwise being administered a medication. This may be as simple as swallowing a tablet, or it may be a long-running infusion. \r\n\r\nRelated resources tie this event to the authorizing prescription, and the specific encounter between patient and health care practitioner."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* identifier MS
* identifier ^short = "Allows the resource to be referenced within / by other resources."
* status MS
* status ^short = "Allows an administration to be marked as in-progress or completed."
* category from UKCore-MedicationAdministrationCategory (extensible)
* medication[x] MS
* medication[x] from $UKCore-MedicationCode (preferred)
* medication[x] ^short = "Identifies the medication that was administered."
* subject MS
* subject ^short = "Identifies the patient receiving the medication."
* effective[x] MS
* effective[x] ^short = "The start and end time of the administration."
* dosage MS
* dosage ^short = "The dosage instruction for the administered medication."
* dosage.site from $UKCore-BodySite (preferred)
* dosage.route from $UKCore-SubstanceOrProductAdministrationRoute (preferred)
* dosage.method from $UKCore-MedicationDosageMethod (preferred)

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/UKCore-MedicationAdministration"