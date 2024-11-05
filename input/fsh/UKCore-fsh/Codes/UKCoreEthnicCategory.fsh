//Alias: $UKCore-EthnicCategoryEngland = https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryEngland
Alias: $UKCore-EthnicCategoryWales = https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryWales

ValueSet: UKCoreEthnicCategory
Id: UKCore-EthnicCategory
Title: "UK Core Ethnic Category"
Description: "A set of codes that define the ethnicity of a person, as specified by the person."
* ^version = "2.2.0"
* ^status = #active
* ^date = "2022-08-26"
* ^publisher = "HL7 UK"
* ^experimental = false
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html."
* ^expansion.identifier = "b5d7321a-cc47-4d0b-aeda-35f3a230f043"
* ^expansion.timestamp = "2021-09-09T14:17:34+00:00"
* ^expansion.total = 35
* ^expansion.offset = 0
* ^expansion.parameter[0].name = "version"
* ^expansion.parameter[=].valueUri = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryEngland|1.0.0"
* ^expansion.parameter[+].name = "version"
* ^expansion.parameter[=].valueUri = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryWales|1.0.0"
* ^expansion.parameter[+].name = "count"
* ^expansion.parameter[=].valueInteger = 2147483647
* ^expansion.parameter[+].name = "offset"
* ^expansion.parameter[=].valueInteger = 0
* ^expansion.contains[0].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #N
* ^expansion.contains[=].display = "African"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #L
* ^expansion.contains[=].display = "Any other Asian background"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #P
* ^expansion.contains[=].display = "Any other Black background"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #S
* ^expansion.contains[=].display = "Any other ethnic group"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #G
* ^expansion.contains[=].display = "Any other mixed background / multiple ethnic background"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #A
* ^expansion.contains[=].display = "Any White Background, including Welsh, English, Scottish, Northern Irish, Irish, British"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #T
* ^expansion.contains[=].display = "Arab"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #L
* ^expansion.contains[=].display = "Asian or Asian British - Any other Asian background"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #K
* ^expansion.contains[=].display = "Asian or Asian British - Bangladeshi"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #H
* ^expansion.contains[=].display = "Asian or Asian British - Indian"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #J
* ^expansion.contains[=].display = "Asian or Asian British - Pakistani"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #K
* ^expansion.contains[=].display = "Bangladeshi"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #N
* ^expansion.contains[=].display = "Black or Black British - African"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #P
* ^expansion.contains[=].display = "Black or Black British - Any other Black background"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #M
* ^expansion.contains[=].display = "Black or Black British - Caribbean"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #M
* ^expansion.contains[=].display = "Caribbean"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #R
* ^expansion.contains[=].display = "Chinese"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #B
* ^expansion.contains[=].display = "Gypsy or Irish Traveller"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #H
* ^expansion.contains[=].display = "Indian"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #G
* ^expansion.contains[=].display = "Mixed - Any other mixed background"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #F
* ^expansion.contains[=].display = "Mixed - White and Asian"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #E
* ^expansion.contains[=].display = "Mixed - White and Black African"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #D
* ^expansion.contains[=].display = "Mixed - White and Black Caribbean"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #99
* ^expansion.contains[=].display = "Not known"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #Z
* ^expansion.contains[=].display = "Not stated"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #Z
* ^expansion.contains[=].display = "Not stated"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #S
* ^expansion.contains[=].display = "Other Ethnic Groups - Any other ethnic group"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #R
* ^expansion.contains[=].display = "Other Ethnic Groups - Chinese"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #J
* ^expansion.contains[=].display = "Pakistani"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #C
* ^expansion.contains[=].display = "White - Any other White background"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #A
* ^expansion.contains[=].display = "White - British"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryEngland"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #B
* ^expansion.contains[=].display = "White - Irish"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #F
* ^expansion.contains[=].display = "White and Asian"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #E
* ^expansion.contains[=].display = "White and Black African"
* ^expansion.contains[+].system = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryWales"
* ^expansion.contains[=].version = "1.0.0"
* ^expansion.contains[=].code = #D
* ^expansion.contains[=].display = "White and Black Caribbean"
* include codes from system UKCore-EthnicCategoryEngland
* include codes from system $UKCore-EthnicCategoryWales

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-EthnicCategory"

CodeSystem: UKCoreEthnicCategoryEngland
Id: UKCore-EthnicCategoryEngland
Title: "UK Core Ethnic Category England"
Description: "A set of codes that define the ethnicity of a person, as specified by the person. These codes and their descriptions represent concepts used in England and are copied from the content of the [NHS Data Dictionary Ethnic Category](https://datadictionary.nhs.uk/data_elements/ethnic_category.html?hl=ethnic%2Ccategory) web page on 10/09/2021."
* ^version = "1.1.1"
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
* ^caseSensitive = true
* ^content = #complete
* #A "White - British"
* #B "White - Irish"
* #C "White - Any other White background"
* #D "Mixed - White and Black Caribbean"
* #E "Mixed - White and Black African"
* #F "Mixed - White and Asian"
* #G "Mixed - Any other mixed background"
* #H "Asian or Asian British - Indian"
* #J "Asian or Asian British - Pakistani"
* #K "Asian or Asian British - Bangladeshi"
* #L "Asian or Asian British - Any other Asian background"
* #M "Black or Black British - Caribbean"
* #N "Black or Black British - African"
* #P "Black or Black British - Any other Black background"
* #R "Other Ethnic Groups - Chinese"
* #S "Other Ethnic Groups - Any other ethnic group"
* #Z "Not stated"
* #99 "Not known"

* ^url = "https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryEngland"