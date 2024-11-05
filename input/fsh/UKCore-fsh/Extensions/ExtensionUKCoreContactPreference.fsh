Extension: ExtensionUKCoreContactPreference
Id: Extension-UKCore-ContactPreference
Title: "Extension UK Core Contact Preference"
Description: "The preferred method of contact, contact times and written communication format given by a Patient or Related Person."
Context: Patient, RelatedPerson
* ^version = "2.3.0"
* ^date = "2023-12-07"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This extension extends the Patient and RelatedPerson resources to support the exchange of their preferred method of contact, contact times and written communication format."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* . ..1
* . ^short = "The preferred method of contact, contact times and written communication format given by a Patient or Related Person."
* . ^definition = "The preferred method of contact, contact times and written communication format given by a Patient or Related Person."
* extension contains
    PreferredContactMethod 0..1 and
    PreferredContactTimes 0..1 and
    PreferredWrittenCommunicationFormat 0..1
* extension[PreferredContactMethod] ^short = "Preferred Contact Method"
* extension[PreferredContactMethod] ^definition = "The preferred method of contact given by a Patient or Related Person."
* extension[PreferredContactMethod].value[x] 1..
* extension[PreferredContactMethod].value[x] only CodeableConcept
* extension[PreferredContactMethod].value[x] from UKCore-PreferredContactMethod (extensible)
* extension[PreferredContactMethod].value[x] ^short = "Preferred Contact Method"
* extension[PreferredContactMethod].value[x] ^definition = "The preferred method of contact given by a Patient or Related Person."
* extension[PreferredContactTimes] ^short = "Preferred Contact Times"
* extension[PreferredContactTimes] ^definition = "The preferred contact times given by a Patient or Related Person."
* extension[PreferredContactTimes].value[x] 1..
* extension[PreferredContactTimes].value[x] only string or Timing
* extension[PreferredContactTimes].value[x] ^short = "Preferred Contact Times"
* extension[PreferredContactTimes].value[x] ^definition = "The preferred contact time period given by a Patient or Related Person."
* extension[PreferredWrittenCommunicationFormat] ^short = "Preferred Written Communication Format"
* extension[PreferredWrittenCommunicationFormat] ^definition = "The preferred written communication format given by a Patient or Related Person."
* extension[PreferredWrittenCommunicationFormat].value[x] 1..
* extension[PreferredWrittenCommunicationFormat].value[x] only CodeableConcept
* extension[PreferredWrittenCommunicationFormat].value[x] from UKCore-PreferredWrittenCommunicationFormat (extensible)
* extension[PreferredWrittenCommunicationFormat].value[x] ^short = "Preferred Written Communication Format"
* extension[PreferredWrittenCommunicationFormat].value[x] ^definition = "The preferred written communication format given by a Patient or Related Person."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-ContactPreference"