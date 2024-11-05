Alias: $Extension-UKCore-MainLocation = https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-MainLocation
Alias: $UKCore-OrganizationType = https://fhir.hl7.org.uk/ValueSet/UKCore-OrganizationType

Profile: UKCoreOrganization
Parent: Organization
Id: UKCore-Organization
Title: "UK Core Organization"
Description: "This profile defines the UK constraints and extensions on the International FHIR resource [Organization](https://hl7.org/fhir/R4/Organization.html)."
* ^version = "2.5.0"
* ^status = #active
* ^date = "2023-12-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^purpose = "This profile allows exchange of a formally or informally recognised grouping of people or organisations formed for the purpose of achieving some form of collective action. Includes companies, institutions, corporations, departments, community groups, healthcare practice groups, etc."
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* extension contains
    $Extension-UKCore-MainLocation named mainLocation 0..1 and
    OrgPeriod named organizationPeriod 0..1
* extension[mainLocation] ^short = "The main location of the organisation."
* extension[mainLocation] ^definition = "The main location of the organisation."
* extension[organizationPeriod] ^short = "The date range that this organization SHOULD be considered available."
* extension[organizationPeriod] ^definition = "The date range that this organization SHOULD be considered available."
* extension[organizationPeriod].value[x] ^short = "The date range that this organization SHOULD be considered available."
* extension[organizationPeriod].value[x] ^definition = "The date range that this organization SHOULD be considered available."
* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.ordered = false
* identifier ^slicing.rules = #open
* identifier ^short = "Identifies this organization across multiple systems."
* identifier contains
    odsOrganisationCode 0..1 and
    odsSiteCode 0..1
* identifier[odsOrganisationCode] ^short = "Organisation Data Service code"
* identifier[odsOrganisationCode] ^definition = "Identifier code supplier by the Organisation Data Service."
* identifier[odsOrganisationCode].system 1..
* identifier[odsOrganisationCode].system = "https://fhir.nhs.uk/Id/ods-organization-code" (exactly)
* identifier[odsOrganisationCode].value 1..
* identifier[odsSiteCode] ^short = "ODS Site code to identify the organisation at site level"
* identifier[odsSiteCode] ^definition = "ODS Site code to identify the organisation at site level."
* identifier[odsSiteCode].system 1..
* identifier[odsSiteCode].system = "https://fhir.nhs.uk/Id/ods-site-code" (exactly)
* identifier[odsSiteCode].value 1..
* active MS
* active ^short = "Identifies this organization across multiple systems."
* type from $UKCore-OrganizationType (extensible)
* type ^binding.description = "A set of concepts indicating the organisation type, derived from the base CodeSystem, and Genomics specific concepts"
* name MS
* name ^short = "A name associated with the organization."
* telecom MS
* telecom ^short = "Contact details for the organization."
* address MS
* address ^short = "An address for the organization."

* ^url = "https://fhir.hl7.org.uk/StructureDefinition/UKCore-Organization"