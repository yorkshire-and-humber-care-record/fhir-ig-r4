Alias: $Extension-UKCore-MedicationRepeatInformation = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-MedicationRepeatInformation
//Alias: $UKCore-MedicationRequestCategory = https://fhir.hl7.org.uk/ValueSet/UKCore-MedicationRequestCategory
//Alias: $UKCore-MedicationCode = https://fhir.hl7.org.uk/ValueSet/UKCore-MedicationCode
//Alias: $UKCore-MedicationRequestCourseOfTherapy = https://fhir.hl7.org.uk/ValueSet/UKCore-MedicationRequestCourseOfTherapy
//Alias: $UKCore-BodySite = https://fhir.hl7.org.uk/ValueSet/UKCore-BodySite
//Alias: $UKCore-SubstanceOrProductAdministrationRoute = https://fhir.hl7.org.uk/ValueSet/UKCore-SubstanceOrProductAdministrationRoute
//Alias: $UKCore-MedicationDosageMethod = https://fhir.hl7.org.uk/ValueSet/UKCore-MedicationDosageMethod

Profile: UKCoreMedicationRequest
Parent: MedicationRequest
Id: UKCore-MedicationRequest
Title: "UK Core MedicationRequest"
Description: "This profile defines the UK constraints and extensions on the International FHIR resource [MedicationRequest](https://hl7.org/fhir/R4/MedicationRequest.html)."
* ^version = "2.5.0"
* ^status = #active
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "An order or request for both supply of the medication and the instructions for administration of the medication to an individual. \r\n\r\nThis profile covers inpatient medication orders as well as community orders (whether filled by the prescriber or by a pharmacy). It also includes orders for over-the-counter medications (e.g. Aspirin), total parenteral nutrition and diet/ vitamin supplements, and may be used to support the order of medication-related devices. \r\n\r\nIt is not intended for use in prescribing particular diets, or for ordering non-medication-related items (eyeglasses, supplies, etc)."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* extension contains $Extension-UKCore-MedicationRepeatInformation named medicationRepeatInformation 0..1
* extension[medicationRepeatInformation] ^short = "Allows the resource to be referenced within / by other resources."
* identifier MS
* identifier ^short = "Allows the resource to be referenced within / by other resources."
* status MS
* status ^short = "A code specifying the current state of the order."
* intent MS
* intent ^short = "Whether the request is a proposal, plan, or an original order."
* category MS
* category from UKCore-MedicationRequestCategory (extensible)
* category ^short = "Provides the business context for the relevant dispensing processes."
* medication[x] MS
* medication[x] from UKCore-MedicationCode (preferred)
* medication[x] ^short = "Identifies the medication being requested."
* subject MS
* subject ^short = "Who the medication request is for."
* authoredOn MS
* authoredOn ^short = "The date / time that the medication request was initially authored."
* requester MS
* requester ^short = "Who is requesting the medication."
* courseOfTherapyType from UKCore-MedicationRequestCourseOfTherapy (extensible)
* courseOfTherapyType ^short = "A course of therapy for a medication request"
* courseOfTherapyType ^definition = "The description of the course of therapy for a medication request."
* dosageInstruction MS
* dosageInstruction ^short = "Dosage instructions for the medication."
* dosageInstruction.text MS
* dosageInstruction.text ^short = "Free text dosage instructions."
* dosageInstruction.timing MS
* dosageInstruction.timing ^short = "When the medication should be administered."
* dosageInstruction.asNeeded[x] ^binding.strength = #preferred
* dosageInstruction.site from UKCore-BodySite (preferred)
* dosageInstruction.route from UKCore-SubstanceOrProductAdministrationRoute (preferred)
* dosageInstruction.method from UKCore-MedicationDosageMethod (preferred)
* dosageInstruction.doseAndRate MS
* dosageInstruction.doseAndRate ^short = "Dosage instructions for the requested medication."
* dosageInstruction.doseAndRate.dose[x] MS
* dosageInstruction.doseAndRate.dose[x] ^short = "Quantity of requested medication to be administered."
* dosageInstruction.doseAndRate.rate[x] MS
* dosageInstruction.doseAndRate.rate[x] ^short = "Rate at which the requested medication is to be administered."
* dispenseRequest MS
* dispenseRequest ^short = "Specific dispensing quantity instructions."
* dispenseRequest.quantity MS
* dispenseRequest.quantity ^short = ">Amount of medication to supply per dispense."
* substitution 1.. MS
* substitution ^short = "Any restrictions on medication substitution."
* substitution.allowed[x] ^definition = "The purpose of this element is to allow the prescriber to dispense a different drug from what was prescribed."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/UKCore-MedicationRequest"