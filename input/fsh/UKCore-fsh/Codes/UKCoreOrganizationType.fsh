Alias: $UKCore-OrganizationTypeGenomics = https://fhir.hl7.org.uk/CodeSystem/UKCore-OrganizationTypeGenomics

ValueSet: UKCoreOrganizationType
Id: UKCore-OrganizationType
Title: "UK Core Organization Type"
Description: "A set of codes that can be used to indicate a type of organization."
* ^version = "1.0.0"
* ^status = #active
* ^date = "2023-04-28"
* ^publisher = "HL7 UK"
* ^experimental = false
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^expansion.identifier = "3821f3e2-0870-498d-91a7-8dd6e70f8348"
* ^expansion.timestamp = "2023-03-29T11:44:59+00:00"
* ^expansion.total = 15
* ^expansion.offset = 0
* ^expansion.contains[0].system = "http://terminology.hl7.org/CodeSystem/organization-type"
* ^expansion.contains[=].code = #other
* ^expansion.contains[=].display = "Other"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/organization-type"
* ^expansion.contains[=].code = #reli
* ^expansion.contains[=].display = "Religious Institution"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/organization-type"
* ^expansion.contains[=].code = #bus
* ^expansion.contains[=].display = "Non-Healthcare Business or Corporation"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/organization-type"
* ^expansion.contains[=].code = #ins
* ^expansion.contains[=].display = "Insurance Company"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/organization-type"
* ^expansion.contains[=].code = #edu
* ^expansion.contains[=].display = "Educational Institute"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/organization-type"
* ^expansion.contains[=].code = #prov
* ^expansion.contains[=].display = "Healthcare Provider"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/organization-type"
* ^expansion.contains[=].code = #govt
* ^expansion.contains[=].display = "Government"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/organization-type"
* ^expansion.contains[=].code = #pay
* ^expansion.contains[=].display = "Payer"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/organization-type"
* ^expansion.contains[=].code = #team
* ^expansion.contains[=].display = "Organizational team"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/organization-type"
* ^expansion.contains[=].code = #crs
* ^expansion.contains[=].display = "Clinical Research Sponsor"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/organization-type"
* ^expansion.contains[=].code = #dept
* ^expansion.contains[=].display = "Hospital Department"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/organization-type"
* ^expansion.contains[=].code = #cg
* ^expansion.contains[=].display = "Community Group"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-OrganizationTypeGenomics"
* ^expansion.contains[=].code = #GLH
* ^expansion.contains[=].display = "Genomic Lab Hub"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-OrganizationTypeGenomics"
* ^expansion.contains[=].code = #GEL
* ^expansion.contains[=].display = "Genomics England"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-OrganizationTypeGenomics"
* ^expansion.contains[=].code = #LAB
* ^expansion.contains[=].display = "Other Genomics Laboratory"
* include codes from system OrganizationType
* include codes from system $UKCore-OrganizationTypeGenomics

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-OrganizationType"