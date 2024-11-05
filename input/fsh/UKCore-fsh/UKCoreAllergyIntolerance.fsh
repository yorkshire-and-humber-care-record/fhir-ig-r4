Alias: $Extension-UKCore-Evidence = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-Evidence
Alias: $Extension-UKCore-AllergyIntoleranceEnd = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-AllergyIntoleranceEnd
Alias: $UKCore-AllergyCode = https://fhir.hl7.org.uk/ValueSet/UKCore-AllergyCode
Alias: $UKCore-AllergySubstance = https://fhir.hl7.org.uk/ValueSet/UKCore-AllergySubstance
Alias: $UKCore-AllergyManifestation = https://fhir.hl7.org.uk/ValueSet/UKCore-AllergyManifestation
Alias: $UKCore-SubstanceOrProductAdministrationRoute = https://fhir.hl7.org.uk/ValueSet/UKCore-SubstanceOrProductAdministrationRoute

Profile: UKCoreAllergyIntolerance
Parent: AllergyIntolerance
Id: UKCore-AllergyIntolerance
Title: "UK Core AllergyIntolerance"
Description: "This profile defines the UK constraints and extensions on the International FHIR resource [AllergyIntolerance](https://hl7.org/fhir/R4/AllergyIntolerance.html)."
* ^version = "2.5.0"
* ^status = #active
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This profile allows a record of a clinical assessment of an allergy or intolerance; a propensity, or a potential risk to an individual, to have an adverse reaction on future exposure to the specified substance, or class of substance. \r\n\r\nWhere a propensity is identified, to record information or evidence about a reaction event that is characterised by any harmful or undesirable physiological response that is specific to the individual and triggered by exposure of an individual to the identified substance or class of substance. \r\n\r\nSubstances include but are not limited to a therapeutic substance administered correctly at an appropriate dosage for the individual; food; material derived from plants or animals; or venom from insect stings. \r\n\r\nThis resource is used to record physical conditions. It SHALL NOT be used to record preferences for or against types of treatment, for example on religious grounds. For such use cases consider the use of the FHIR [Consent](https://hl7.org/fhir/R4/consent.html) resource."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* extension contains $Extension-UKCore-Evidence named evidence 0..*
* extension[evidence] ^short = "A reference to a DiagnosticReport resource for investigations that confirm the certainty of the allergy or intolerance diagnosis."
* clinicalStatus MS
* clinicalStatus ^short = "Defines whether the allergy or intolerance is active, inactive or resolved."
* clinicalStatus.extension contains $Extension-UKCore-AllergyIntoleranceEnd named allergyIntoleranceEnd 0..1
// * clinicalStatus.extension[allergyIntoleranceEnd] only $Extension-UKCore-AllergyIntoleranceEnd
// * clinicalStatus.extension[allergyIntoleranceEnd] ^sliceName = "allergyIntoleranceEnd"
* clinicalStatus.extension[allergyIntoleranceEnd] ^short = "The date when the allergy or intolerance clinicalStatus is updated to inactive or resolved."
* clinicalStatus.extension[allergyIntoleranceEnd] ^isModifier = false
* verificationStatus MS
* verificationStatus ^short = "Defines the assertion of the allergy or intolerance."
* code 1.. MS
* code from $UKCore-AllergyCode (preferred)
* code ^short = "This code identifies the allergy or intolerance."
* patient MS
* patient ^short = "Links the allergy or intolerance to the patient."
* reaction MS
* reaction ^short = "Details about each adverse reaction event."
* reaction.substance from $UKCore-AllergySubstance (preferred)
* reaction.manifestation from $UKCore-AllergyManifestation (preferred)
* reaction.severity MS
* reaction.severity ^short = "A clinical assessment of the severity of the reaction event as a whole."
* reaction.exposureRoute from $UKCore-SubstanceOrProductAdministrationRoute (preferred)

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/UKCore-AllergyIntolerance"