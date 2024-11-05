ValueSet: UKCoreBodyTemperature
Id: UKCore-BodyTemperature
Title: "UK Core Body Temperature"
Description: """A set of codes regarding laboratory medicine test requests and results intended for use by pathology services and their users. Selected from the SNOMED CT UK coding system: 
 
 - DescendantOrSelfOf 386725007 | Body temperature  
 - MINUS 
 - DescendantOrSelfOf 248458005 | Comparative temperature in limbs  
 - DescendantOrSelfOf 852591000000107 | Maximum body temperature  &nbsp;
 - DescendantOrSelfOf 852601000000101 | Minimum body temperature  &nbsp;
 - DescendantOrSelfOf 852581000000105 | Target body temperature  &nbsp;
 - DescendantOrSelfOf 364419004 | Temperature of cervical spine  &nbsp;
 - DescendantOrSelfOf 364424001 | Temperature of thoracic spine  &nbsp;
 - DescendantOrSelfOf 364429006 | Temperature of lumbar spine &nbsp;
 - DescendantOrSelfOf 248835004 | Temperature of breast  &nbsp;
 - DescendantOrSelfOf 250124002 | Temperature of joint  &nbsp;
 - DescendantOrSelfOf 431197002 | Temperature of digit  &nbsp;
 - DescendantOrSelfOf 364518005 | Temperature of foot  &nbsp;
 - DescendantOrSelfOf 363997004 | Temperature of pinna  &nbsp;
 - DescendantOrSelfOf 364537001 | Temperature of skin  &nbsp;
 - DescendantOrSelfOf 364246006 | Temperature of vagina  &nbsp;
 - DescendantOrSelfOf 431598003 | Temperature of oesophagus)"""
* ^version = "1.0.0"
* ^status = #active
* ^date = "2023-09-12"
* ^publisher = "HL7 UK"
* ^contact.name = "HL7 UK"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "ukcore@hl7.org.uk"
* ^contact.telecom.use = #work
* ^contact.telecom.rank = 1
* ^copyright = "Copyright © 2021+ HL7 UK Licensed under the Apache License, Version 2.0 (the \"License\"); you may not use this file except in compliance with the License. You may obtain a copy of the License at  http://www.apache.org/licenses/LICENSE-2.0 Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License. HL7® FHIR® standard Copyright © 2011+ HL7 The HL7® FHIR® standard is used under the FHIR license. You may obtain a copy of the FHIR license at  https://www.hl7.org/fhir/license.html.<br$gt;This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."
* ^expansion.identifier = "d75409bd-f6ae-4634-8521-4f9bd9b43a29"
* ^expansion.timestamp = "2023-10-31T15:42:00+00:00"
* ^expansion.total = 15
* ^expansion.offset = 0
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #415882003
* ^expansion.contains[=].display = "Axillary temperature"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #300076005
* ^expansion.contains[=].display = "Basal body temperature"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #698832009
* ^expansion.contains[=].display = "Bladder temperature"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #386725007
* ^expansion.contains[=].display = "Body temperature"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #431807005
* ^expansion.contains[=].display = "Body temperature taken with digital thermometer"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #276885007
* ^expansion.contains[=].display = "Core body temperature"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #1222808002
* ^expansion.contains[=].display = "Core body temperature measured in blood"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #415921007
* ^expansion.contains[=].display = "Forehead skin strip temperature"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #415922000
* ^expansion.contains[=].display = "Forehead temperature"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #415929009
* ^expansion.contains[=].display = "Groin temperature"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #698831002
* ^expansion.contains[=].display = "Nasopharyngeal temperature"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #415945006
* ^expansion.contains[=].display = "Oral temperature"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #307047009
* ^expansion.contains[=].display = "Rectal temperature"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #708499008
* ^expansion.contains[=].display = "Temperature of neonate at birth"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].code = #415974002
* ^expansion.contains[=].display = "Tympanic temperature"
* include codes from system SNOMED_CT_INT
    where constraint = "DescendantOrSelfOf 386725007 MINUS (DescendantOrSelfOf 248458005 OR DescendantOrSelfOf 852591000000107 OR DescendantOrSelfOf 852601000000101 OR DescendantOrSelfOf 852581000000105 OR DescendantOrSelfOf 364419004 OR DescendantOrSelfOf 364424001 OR DescendantOrSelfOf 364429006 OR DescendantOrSelfOf 248835004 OR DescendantOrSelfOf 250124002 OR DescendantOrSelfOf 431197002 OR DescendantOrSelfOf 364518005 OR DescendantOrSelfOf 363997004  OR DescendantOrSelfOf 364537001 OR DescendantOrSelfOf 364246006 OR DescendantOrSelfOf 431598003)"

* ^url = "https://fhir.hl7.org.uk/ValueSet/UKCore-BodyTemperature"