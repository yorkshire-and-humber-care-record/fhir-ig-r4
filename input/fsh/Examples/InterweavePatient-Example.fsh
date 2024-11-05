Alias: $UKCore-NHSNumberVerificationStatusEngland = https://fhir.hl7.org.uk/CodeSystem/UKCore-NHSNumberVerificationStatusEngland
Alias: $UKCore-ResidentialStatus = https://fhir.hl7.org.uk/CodeSystem/UKCore-ResidentialStatus

Instance: InterweavePatientExample-MustSupport
InstanceOf: InterweavePatient
Description: "Interweave Patient example - Must Support"

* insert Ruleset-ExampleMetaForHospital(Patient)

* identifier[nhsNumber].extension[nhsNumberVerificationStatus].valueCodeableConcept = UKCore-NHSNumberVerificationStatusEngland#01 "Number present and verified"
* identifier[nhsNumber].system = "https://fhir.nhs.uk/Id/nhs-number"
* identifier[nhsNumber].value = "123456789"

* active = true

* name[official].use = #official "Official"
* name[official].given[0] = "Jane"
* name[official].family = "Bloggs"

* name[1].use = #maiden "Name changed for Marriage"
* name[1].given[0] = "Jane"
* name[1].family = "Blog"

* birthDate = 1992-01-27
* gender = http://hl7.org/fhir/administrative-gender#female "Female"

* telecom[0].system = #phone "Phone"
* telecom[0].value = "07987 123412"
* telecom[0].use = #mobile

* address[0].use = #home
* address[0].line[0] = "42 Grove Street"
* address[0].line[1] = "Northville"
* address[0].city = "Overtown"
* address[0].district = "West Yorkshire"
* address[0].postalCode = "LS21 1PF"

* contact[0].relationship.coding = 	http://terminology.hl7.org/CodeSystem/v2-0131#N "Next-of-Kin"
* contact[0].name[0].use = #usual
* contact[0].name[0].given[0] = "Fred"
* contact[0].name[0].family = "Bloggs"
* contact[0].telecom[0].system = #phone "Phone"
* contact[0].telecom[0].value = "07123 987698"
* contact[0].telecom[0].use = #mobile


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Instance: InterweavePatientExample-Full
InstanceOf: InterweavePatient
Description: "Interweave Patient example - Full"


* insert Ruleset-ExampleMetaForHospital(Patient)

* extension[0].url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-EthnicCategory"
* extension[=].valueCodeableConcept = https://fhir.hl7.org.uk/CodeSystem/UKCore-EthnicCategoryEngland#G "Mixed - Any other mixed background"

* extension[+].url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-ResidentialStatus"
* extension[=].valueCodeableConcept = UKCore-ResidentialStatus#H "UK Resident"

* extension[+].url = "https://fhir.hl7.org.uk/StructureDefinition/Extension-UKCore-BirthSex"
* extension[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-AdministrativeGender#F "Female"

* identifier[nhsNumber].extension[nhsNumberVerificationStatus].valueCodeableConcept = UKCore-NHSNumberVerificationStatusEngland#01 "Number present and verified"
* identifier[nhsNumber].system = "https://fhir.nhs.uk/Id/nhs-number"
* identifier[nhsNumber].value = "123456789"

// * identifier[localIdentifier].system = "https://fhir.nhs.uk/Id/local-patient-identifier"
// * identifier[localIdentifier].value = "ABC-456-XYZ"
  //TODO - add a reference to the assigning organisation (once we have an organisation example)

* active = true

* name[official].use = #official "Official"
* name[official].given[0] = "Jane"
* name[official].family = "Bloggs"
* name[official].prefix = "Mrs"
* name[official].suffix = "PhD"
* name[official].period.start = 2019-04-20

* name[1].use = #maiden "Name changed for Marriage"
* name[1].given[0] = "Jane"
* name[1].family = "Smith"
* name[1].prefix = "Miss"
* name[1].period.end = 2019-04-19
* name[1].period.start = 1992-01-27
  
* name[2].use = #nickname "Nickname"
* name[2].given[0] = "Jinny"

* birthDate = 1992-01-27
* gender = http://hl7.org/fhir/administrative-gender#female "Female"

* telecom[0].system = #phone "Phone"
* telecom[0].value = "07987 123412"
* telecom[0].use = #mobile "Mobile"

* telecom[1].system = #email "Email"
* telecom[1].value = "jane.bloggs@email.com"

* address[0].use = #home "Home"
* address[0].line[0] = "42 Grove Street"
* address[0].line[1] = "Northville"
* address[0].city = "Overtown"
* address[0].district = "West Yorkshire"
* address[0].postalCode = "LS21 1PF"
* address[0].country = "GBR"
* address[0].period.start = 2019-04-20

* address[1].use = #old "Old"
* address[1].line[0] = "3 Acacia Avenue"
* address[1].city = "Birmingham"
* address[1].district = "West Midlands"
* address[1].postalCode = "BH3 1UW"
* address[1].period.end = 2019-04-19
* address[1].period.start = 2010-07-21

* maritalStatus.coding = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M "Married"

* contact[0].relationship.coding = 	http://terminology.hl7.org/CodeSystem/v2-0131#N "Next-of-Kin"
* contact[0].name[0].use = #usual "Usual"
* contact[0].name[0].given[0] = "Fred"
* contact[0].name[0].family = "Bloggs"
* contact[0].name[0].prefix = "Mr"
* contact[0].telecom[0].system = #phone "Phone"
* contact[0].telecom[0].value = "07123 987698"
* contact[0].telecom[0].use = #mobile "Mobile"
* contact[0].telecom[1].system = #email "Email"
* contact[0].telecom[1].value = "fred.bloggs@email.com"
* contact[0].address[0].use = #home "Home"
* contact[0].address[0].line[0] = "42 Grove Street"
* contact[0].address[0].line[1] = "Northville"
* contact[0].address[0].city = "Overtown"
* contact[0].address[0].district = "West Yorkshire"
* contact[0].address[0].postalCode = "LS21 1PF"

* contact[1].relationship.coding = 	http://terminology.hl7.org/CodeSystem/v2-0131#C "Emergency Contact"
* contact[1].name[0].use = #usual "Usual"
* contact[1].name[0].given[0] = "Ann"
* contact[1].name[0].family = "Hathaway"
* contact[1].telecom[0].system = #phone "Phone"
* contact[1].telecom[0].value = "07456 456745"
* contact[1].telecom[0].use = #mobile "Mobile"