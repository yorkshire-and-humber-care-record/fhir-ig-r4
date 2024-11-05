Profile: UKCoreLocation
Parent: Location
Id: UKCore-Location
Title: "UK Core Location"
Description: "This profile defines the UK constraints and extensions on the International FHIR resource [Location](https://hl7.org/fhir/R4/Location.html)."
* ^version = "2.3.0"
* ^status = #active
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This profile can be used to exchange details and position information for a physical place where services are provided and resources and participants may be stored, found, contained, or accommodated.\r\n\r\nA location includes both incidental locations (a place which is used for healthcare without prior designation or authorisation) and dedicated, formally appointed locations. Locations may be private, public, mobile or fixed and scale from small freezers to full hospital buildings or parking garages."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains odsSiteCode 0..1 MS
* identifier[odsSiteCode] ^short = "ODS Site code to identify the organisation at site level"
* identifier[odsSiteCode] ^definition = "ODS Site code to identify the organisation at site level."
* identifier[odsSiteCode].system 1..
* identifier[odsSiteCode].system = "https://fhir.nhs.uk/Id/ods-site-code" (exactly)
* identifier[odsSiteCode].system ^short = "ODS Code"
* identifier[odsSiteCode].value 1..
* status MS
* status ^short = "Is the location active, inactive, or suspended"
* name MS
* name ^short = "Name of the location as used by humans. This does not need to be unique."
* address MS
* address ^short = "If locations can be visited, we need to keep track of their address."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/UKCore-Location"