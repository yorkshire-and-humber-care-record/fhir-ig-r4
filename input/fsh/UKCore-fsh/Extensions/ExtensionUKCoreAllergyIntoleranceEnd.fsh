Extension: ExtensionUKCoreAllergyIntoleranceEnd
Id: Extension-UKCore-AllergyIntoleranceEnd
Title: "Extension UK Core Allergy Intolerance End"
Description: "Supports the date when the allergy or intolerance was no longer valid, and/or, the reason why the allergy or intolerance is no longer valid."
Context: AllergyIntolerance.clinicalStatus
* ^version = "2.3.0"
* ^date = "2023-12-07"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This extension extends the AllergyIntolerance resource to support the exchange of information describing the date when the allergy or intolerance was no longer valid, and/or, the reason why the allergy or intolerance is no longer valid."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* . ..1
* . ^short = "Supports the date when the allergy or intolerance was no longer valid, and/or, the reason why the allergy or intolerance is no longer valid."
* . ^definition = "Supports the date when the allergy or intolerance was no longer valid, and/or, the reason why the allergy or intolerance is no longer valid."
* extension contains
    endDate 0..1 and
    reasonEnded 0..1
* extension[endDate] ^short = "The date the allergy or intolerance was recorded as no longer valid"
* extension[endDate] ^definition = "The date the allergy or intolerance was recorded as no longer valid."
* extension[endDate].value[x] 1..
* extension[endDate].value[x] only dateTime
* extension[endDate].value[x] ^short = "The date the allergy was recorded as no longer valid"
* extension[endDate].value[x] ^definition = "The date the allergy was recorded as no longer valid."
* extension[reasonEnded] ^short = "The reason why the allergy or intolerance has been resolved"
* extension[reasonEnded] ^definition = "The reason why the allergy or intolerance has been resolved."
* extension[reasonEnded].value[x] 1..
* extension[reasonEnded].value[x] only string
* extension[reasonEnded].value[x] ^short = "The reason why the allergy or intolerance has been resolved"
* extension[reasonEnded].value[x] ^definition = "The reason why the allergy or intolerance has been resolved."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-AllergyIntoleranceEnd"