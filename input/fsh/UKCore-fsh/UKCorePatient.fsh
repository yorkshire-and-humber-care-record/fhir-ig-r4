Alias: $Extension-UKCore-BirthSex = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-BirthSex
Alias: $Extension-UKCore-ContactPreference = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-ContactPreference
Alias: $Extension-UKCore-DeathNotificationStatus = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-DeathNotificationStatus
Alias: $Extension-UKCore-EthnicCategory = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-EthnicCategory
Alias: $Extension-UKCore-ResidentialStatus = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-ResidentialStatus
Alias: $Extension-UKCore-NHSNumberUnavailableReason = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-NHSNumberUnavailableReason
Alias: $Extension-UKCore-NHSNumberVerificationStatus = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-NHSNumberVerificationStatus
Alias: $Extension-UKCore-OtherContactSystem = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-OtherContactSystem
Alias: $Extension-UKCore-AddressKey = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-AddressKey
Alias: $Extension-UKCore-ContactRank = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-ContactRank
Alias: $Extension-UKCore-CopyCorrespondenceIndicator = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-CopyCorrespondenceIndicator
Alias: $UKCore-PersonMaritalStatusCode = https://fhir.hl7.org.uk/ValueSet/UKCore-PersonMaritalStatusCode
Alias: $UKCore-PersonRelationshipType = https://fhir.hl7.org.uk/ValueSet/UKCore-PersonRelationshipType

Profile: UKCorePatient
Parent: Patient
Id: UKCore-Patient
Title: "UK Core Patient"
Description: "This profile defines the UK constraints and extensions on the International FHIR resource [Patient](https://hl7.org/fhir/R4/Patient.html)."
* ^version = "2.6.0"
* ^date = "2024-03-28"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This profile allows exchange of demographics and other administrative information about an individual receiving care or other health-related services."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* extension contains
    PatBirthPlace named birthPlace 0..1 and
    $Extension-UKCore-BirthSex named birthSex 0..1 and
    PatCadavericDonor named cadavericDonor 0..1 and
    $Extension-UKCore-ContactPreference named contactPreference 0..1 and
    $Extension-UKCore-DeathNotificationStatus named deathNotificationStatus 0..1 and
    $Extension-UKCore-EthnicCategory named ethnicCategory 0..1 and
    $Extension-UKCore-ResidentialStatus named residentialStatus 0..1 and
    PatInterpreterRequired named patientInterpreterRequired 0..1 and
    $Extension-UKCore-NHSNumberUnavailableReason named nhsNumberUnavailableReason 0..1
* extension[birthPlace] ^short = "The registered place of birth of the patient."
* extension[birthPlace] ^definition = "The registered place of birth of the patient."
* extension[birthPlace].value[x] ^short = "The registered place of birth of the patient."
* extension[birthSex] ^short = "The patient's phenotypic sex at birth."
* extension[birthSex] ^definition = "The patient's phenotypic sex at birth."
* extension[cadavericDonor] ^short = "Post-mortem donor status."
* extension[cadavericDonor].value[x] ^short = "Post-mortem donor status."
* extension[cadavericDonor].value[x] ^definition = "Flag indicating whether the patient authorized the donation of body parts after death."
* extension[deathNotificationStatus] ^short = "The patient's death notification status."
* extension[deathNotificationStatus].extension 1..
* extension[ethnicCategory] ^short = "The ethnicity of the subject."
* extension[residentialStatus] ^short = "The residential status of the patient."
* extension[patientInterpreterRequired] ^short = "Indicator showing whether the patient needs an interpreter."
* extension[patientInterpreterRequired].value[x] ^short = "Indicator showing whether the patient needs an interpreter"
* extension[patientInterpreterRequired].value[x] ^definition = "Indicator showing if this Patient requires an interpreter to communicate healthcare information to the practitioner."
* extension[nhsNumberUnavailableReason] ^short = "Reason why this Patient does not include an NHS Number identifier."
* extension[nhsNumberUnavailableReason] ^isModifier = false
* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.ordered = false
* identifier ^slicing.rules = #open
* identifier ^short = "An identifier for this patient."
* identifier contains nhsNumber 0..1
* identifier[nhsNumber] ^short = "The patient's NHS number."
* identifier[nhsNumber] ^mustSupport = false
* identifier[nhsNumber].extension contains $Extension-UKCore-NHSNumberVerificationStatus named nhsNumberVerificationStatus 0..1
* identifier[nhsNumber].extension[nhsNumberVerificationStatus] ^mustSupport = false
* identifier[nhsNumber].system 1..
* identifier[nhsNumber].system = "https://fhir.nhs.uk/Id/nhs-number" (exactly)
* identifier[nhsNumber].value 1..
* active MS
* active ^short = "Whether this patient's record is in active use."
* name MS
* name ^short = "A name associated with the patient."
* telecom MS
* telecom ^short = "A contact detail for the individual."
* telecom.system.extension contains $Extension-UKCore-OtherContactSystem named otherContactSystem 0..1
* telecom.system.extension[otherContactSystem] ^short = "Information about other contact methods which could be used in addition to those listed in `ContactPoint.system`."
* gender MS
* gender ^short = "The gender that the patient is considered to have for administration and record keeping purposes."
* birthDate MS
* birthDate ^short = "The date of birth for the individual."
* birthDate.extension contains PatBirthTime named birthTime 0..1
* birthDate.extension[birthTime] ^short = "The time of day that the patient was born. This SHOULD be included when the birth time is relevant."
* birthDate.extension[birthTime] ^definition = "The time of day that the patient was born. This includes the date to ensure that the timezone information can be communicated effectively."
* birthDate.extension[birthTime].value[x] ^short = "Time of day of birth."
* birthDate.extension[birthTime].value[x] ^definition = "The time of day that the patient was born. This includes the date to ensure that the timezone information can be communicated effectively."
* address MS
* address ^definition = "An address for the individual."
* address.extension contains $Extension-UKCore-AddressKey named addressKey 0..*
* address.extension[addressKey] ^short = "A patient's address key and type"
* address.extension[addressKey] ^definition = "A patient's address key and type."
* address.extension[addressKey] ^mustSupport = false
* maritalStatus from $UKCore-PersonMaritalStatusCode (extensible)
* maritalStatus ^binding.description = "An indicator to identify the legal marital status of a person"
* contact.extension contains
    $Extension-UKCore-ContactRank named contactRank 0..1 and
    $Extension-UKCore-CopyCorrespondenceIndicator named copyCorrespondenceIndicator 0..1
* contact.extension[contactRank] ^short = "The preferred ranking or order of contact applied to a contact on a Patient's contact list."
* contact.extension[copyCorrespondenceIndicator] ^short = "Indicates that a must be copied in to all related correspondence."
* contact.relationship from $UKCore-PersonRelationshipType (extensible)
* contact.telecom.system.extension contains $Extension-UKCore-OtherContactSystem named otherContactSystem 0..1
* contact.telecom.system.extension[otherContactSystem] ^short = "Information about other contact methods which could be used in addition to those listed in `ContactPoint.system`."
* communication.extension contains PatProficiency named proficiency 0..1
* communication.extension[proficiency] ^short = "The patient's proficiency level of the communication method."
//Sushi: error Slice named level already exists on element Patient.communication.extension:proficiency.extension of UKCorePatient (00:01.987 / 01:31.828, 40Mb)
// Sushi:   File: C:\Dev\R4\input\fsh\UKCore-fsh\UKCorePatient.fsh                                      (00:00.002 / 01:31.831, 40Mb)
// Sushi:   Line: 106 - 108                                                                             (00:00.013 / 01:31.845, 40Mb)
// Sushi: error Slice named type already exists on element Patient.communication.extension:proficiency.extension of UKCorePatient (00:00.001 / 01:31.847, 40Mb)
// Sushi:   File: C:\Dev\R4\input\fsh\UKCore-fsh\UKCorePatient.fsh                                      (00:00.001 / 01:31.848, 40Mb)
// Sushi:   Line: 106 - 108
// * communication.extension[proficiency].extension contains
//     level 0..1 and
//     type 0..*
* communication.extension[proficiency].extension[level].value[x] ^short = "The proficiency level for the communication"
* communication.extension[proficiency].extension[level].value[x] ^definition = "The proficiency level for the communication."
* communication.extension[proficiency].extension[type].value[x] ^short = "The proficiency type for the communication"
* communication.extension[proficiency].extension[type].value[x] ^definition = "The proficiency type for the communication."
* communication.language from AllLanguages (required)
* communication.language ^short = "A ValueSet that identifies the language used by a person."
* communication.language ^definition = "A ValueSet that identifies the language used by a person."
* communication.language ^binding.description = "A ValueSet that identifies the language used by a person."
* managingOrganization MS

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/UKCore-Patient"