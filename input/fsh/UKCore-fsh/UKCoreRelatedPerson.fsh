Alias: $Extension-UKCore-ContactPreference = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-ContactPreference
Alias: $Extension-UKCore-CopyCorrespondenceIndicator = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-CopyCorrespondenceIndicator
Alias: $Extension-UKCore-OtherContactSystem = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-OtherContactSystem

Profile: UKCoreRelatedPerson
Parent: RelatedPerson
Id: UKCore-RelatedPerson
Title: "UK Core RelatedPerson"
Description: "This profile defines the UK constraints and extensions on the International FHIR resource [RelatedPerson](https://hl7.org/fhir/R4/RelatedPerson.html)."
* ^version = "2.5.0"
* ^status = #active
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This profile allows exchange of information about a person that is involved in the care for an individual, but who is not the target of healthcare, nor has a formal responsibility in the care process."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* extension contains
    $Extension-UKCore-ContactPreference named contactPreference 0..1 and
    $Extension-UKCore-CopyCorrespondenceIndicator named copyCorrespondenceIndicator 0..1
* extension[contactPreference] ^short = "The preferred method of contact, contact times and written communication format given by a Patient or Related Person."
* extension[copyCorrespondenceIndicator] ^short = "Indicates that a Patient contact or RelatedPerson must be copied in to Patient correspondence."
* active MS
* active ^short = "Whether this related person's record is in active use."
* patient MS
* patient ^short = "The patient this person is related to."
* relationship MS
* relationship from UKCore-PersonRelationshipType (extensible)
* relationship ^short = "The nature of the relationship."
* name MS
* name ^short = "A name associated with the person."
* telecom MS
* telecom ^short = "A contact detail for the person."
// * telecom.system.extension[otherContactSystem] only $Extension-UKCore-OtherContactSystem
// * telecom.system.extension[otherContactSystem] ^sliceName = "otherContactSystem"
* telecom.system.extension contains $Extension-UKCore-OtherContactSystem named otherContactSystem 0..1
* telecom.system.extension[otherContactSystem] ^short = "Information about other contact methods which could be used in addition to those listed in `ContactPoint.system`."
* address MS
* address ^short = "Address where the related person can be contacted or visited."
* communication.language from AllLanguages (required)
* communication.language ^binding.description = "A language which may be used to communicate with the related person about the patient's health."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/UKCore-RelatedPerson"