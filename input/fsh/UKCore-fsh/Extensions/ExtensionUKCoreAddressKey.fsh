Extension: ExtensionUKCoreAddressKey
Id: Extension-UKCore-AddressKey
Title: "Extension UK Core Address Key"
Description: "This carries an address identifier which will be included in an address."
Context: Address
* ^version = "3.0.0"
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This extension extends the Address datatype to support the exchange of the type of address identifier and the address identifier value."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* . ^short = "An extension carrying the address key and type"
* . ^definition = "An extension carrying the address key and type."
* extension contains
    type 1..1 and
    value 1..1
* extension[type] ^short = "Address Key Type"
* extension[type] ^definition = "To identify the type of Address Key recorded."
* extension[type].value[x] 1..
* extension[type].value[x] only CodeableConcept
* extension[type].value[x] from UKCore-AddressKeyType (extensible)
* extension[type].value[x] ^short = "Address Key Type"
* extension[type].value[x] ^definition = "To identify the type of Address Key recorded."
* extension[type].value[x] ^binding.description = "To identify the type of Address Key recorded"
* extension[value] ^short = "Address key value"
* extension[value] ^definition = "To record the value for the address key."
* extension[value].value[x] 1..
* extension[value].value[x] only string
* extension[value].value[x] ^short = "Address key value"
* extension[value].value[x] ^definition = "To record the value for the address key."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-AddressKey"