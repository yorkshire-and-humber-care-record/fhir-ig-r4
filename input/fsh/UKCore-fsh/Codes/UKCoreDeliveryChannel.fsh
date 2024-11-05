Alias: $UKCore-DeliveryChannel = https://fhir.hl7.org.uk/CodeSystem/UKCore-DeliveryChannel

ValueSet: UKCoreDeliveryChannel
Id: UKCore-DeliveryChannel
Title: "UK Core Delivery Channel"
Description: "A set of codes that define the delivery channel of an appointment."
* ^version = "1.1.0"
* ^status = #active
* ^date = "2022-05-20"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^expansion.identifier = "d91a90fd-4134-49e5-b5d5-e569098e0bce"
* ^expansion.timestamp = "2022-02-23T15:17:53+00:00"
* ^expansion.total = 3
* ^expansion.offset = 0
* ^expansion.parameter[0].name = "version"
* ^expansion.parameter[=].valueUri = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DeliveryChannel|1.0.0"
* ^expansion.parameter[+].name = "count"
* ^expansion.parameter[=].valueInteger = 2147483647
* ^expansion.parameter[+].name = "offset"
* ^expansion.parameter[=].valueInteger = 0
* ^expansion.contains[0].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DeliveryChannel"
* ^expansion.contains[=].code = #In-person
* ^expansion.contains[=].display = "In-person"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DeliveryChannel"
* ^expansion.contains[=].code = #Telephone
* ^expansion.contains[=].display = "Telephone"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-DeliveryChannel"
* ^expansion.contains[=].code = #Video
* ^expansion.contains[=].display = "Video"
* include codes from system $UKCore-DeliveryChannel

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-DeliveryChannel"