///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Examples
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Site ////////////////////////////////////////////////////////////////////////////////

Instance: InterweaveLocationExample-Site
InstanceOf: Location
Description: "Interweave Location example - Site"
Usage: #example

* insert Ruleset-ExampleMetaForHospital(Location)

* identifier[0].system = "https://fhir.nhs.uk/Id/ods-site-code"
* identifier[=].value = "G5A1J"

* insert Ruleset-ExampleLocalId(location, RCB.LOC-ABC123)

* status = http://hl7.org/fhir/location-status#active "Active"
* name = "York Hospital"

* mode = http://hl7.org/fhir/location-mode#instance "Instance"
* type.coding = http://terminology.hl7.org/CodeSystem/v3-RoleCode#HOSP "Hospital"
* physicalType.coding = http://terminology.hl7.org/CodeSystem/location-physical-type#si "Site"

* telecom[0].system = #phone "Phone"
* telecom[0].value = "01234 123412"

* address.line[0] = "York Hospital"
* address.line[1] = "Wigginton Road"
* address.city = "York"
* address.postalCode = "YO31 8HE"

* managingOrganization = Reference(InterweaveOrganizationExample-AcuteTrust)
* managingOrganization.display = "York and Scarborough Teaching Hospitals NHS Foundation Trust"
* managingOrganization.identifier.system = "https://fhir.nhs.uk/Id/ods-organization-code"
* managingOrganization.identifier.value = "RCB"


// // Ward //////////////////////////////////////////////////////////////////////////////////
Instance: InterweaveLocationExample-Building
InstanceOf: InterweaveLocation
Description: "Interweave Location example - Building"

* insert Ruleset-ExampleMetaForHospital(Location)

* insert Ruleset-ExampleLocalId(location, RCB.LOC-BUILD01)

* status = http://hl7.org/fhir/location-status#active "Active"
* name = "York Hospital: Jubilee Building"

* mode = http://hl7.org/fhir/location-mode#instance "Instance"
* type.coding = http://terminology.hl7.org/CodeSystem/v3-RoleCode#HU "Hospital unit"
* physicalType.coding = http://terminology.hl7.org/CodeSystem/location-physical-type#bu "Building"

* telecom[0].system = #phone "Phone"
* telecom[0].value = "01234 345346"

* managingOrganization = Reference(InterweaveOrganizationExample-AcuteTrust)
* managingOrganization.display = "York and Scarborough Teaching Hospitals NHS Foundation Trust"
* managingOrganization.identifier.system = "https://fhir.nhs.uk/Id/ods-organization-code"
* managingOrganization.identifier.value = "RCB"

* partOf = Reference(InterweaveLocationExample-Site)
* partOf.display = "York Hospital"


// Ward //////////////////////////////////////////////////////////////////////////////////
Instance: InterweaveLocationExample-Ward-27
InstanceOf: InterweaveLocation
Description: "Interweave Location example - Ward 27"

* insert Ruleset-ExampleMetaForHospital(Location)

* insert Ruleset-ExampleLocalId(location, RCB.LOC-XYZ456)

* status = http://hl7.org/fhir/location-status#active "Active"
* name = "York Hospital: Jubilee Building: Ward 27"

* mode = http://hl7.org/fhir/location-mode#instance "Instance"
* type.coding = http://terminology.hl7.org/CodeSystem/v3-RoleCode#DERM "Dermatology clinic"
* physicalType.coding = http://terminology.hl7.org/CodeSystem/location-physical-type#wa "Ward"

* telecom[0].system = #phone "Phone"
* telecom[0].value = "01234 345345"

* managingOrganization = Reference(InterweaveOrganizationExample-AcuteTrust)
* managingOrganization.display = "York and Scarborough Teaching Hospitals NHS Foundation Trust"
* managingOrganization.identifier.system = "https://fhir.nhs.uk/Id/ods-organization-code"
* managingOrganization.identifier.value = "RCB"

* partOf = Reference(InterweaveLocationExample-Building)
* partOf.display = "York Hospital:Jubilee Building"

// ////////////////////////////////////
Instance: InterweaveLocationExample-Ward-28
InstanceOf: InterweaveLocation
Description: "Interweave Location example - Ward 28"

* insert Ruleset-ExampleMetaForHospital(Location)

* insert Ruleset-ExampleLocalId(location, RCB.LOC-ABC789)

* status = http://hl7.org/fhir/location-status#active "Active"
* name = "York Hospital: Jubilee Building: Ward 28"

* mode = http://hl7.org/fhir/location-mode#instance "Instance"
* type.coding = http://terminology.hl7.org/CodeSystem/v3-RoleCode#ALL "Allergy clinic"
* physicalType.coding = http://terminology.hl7.org/CodeSystem/location-physical-type#wa "Ward"

* telecom[0].system = #phone "Phone"
* telecom[0].value = "05678 111222"

* managingOrganization = Reference(InterweaveOrganizationExample-AcuteTrust)
* managingOrganization.display = "York and Scarborough Teaching Hospitals NHS Foundation Trust"
* managingOrganization.identifier.system = "https://fhir.nhs.uk/Id/ods-organization-code"
* managingOrganization.identifier.value = "RCB"

* partOf = Reference(InterweaveLocationExample-Building)
* partOf.display = "York Hospital:Jubilee Building"

// ////////////////////////////////////
Instance: InterweaveLocationExample-Ward-AandE
InstanceOf: InterweaveLocation
Description: "Interweave Location example - A&E"

* insert Ruleset-ExampleMetaForHospital(Location)

* insert Ruleset-ExampleLocalId(location, RCB.LOC-AE789)

* status = http://hl7.org/fhir/location-status#active "Active"
* name = "York Hospital: Jubilee Building: Accident and Emergency"

* mode = http://hl7.org/fhir/location-mode#instance "Instance"
* type.coding = http://terminology.hl7.org/CodeSystem/v3-RoleCode#ER "Emergency room"
* physicalType.coding = http://terminology.hl7.org/CodeSystem/location-physical-type#wa "Ward"

* telecom[0].system = #phone "Phone"
* telecom[0].value = "05678 111999"

* managingOrganization = Reference(InterweaveOrganizationExample-AcuteTrust)
* managingOrganization.display = "York and Scarborough Teaching Hospitals NHS Foundation Trust"
* managingOrganization.identifier.system = "https://fhir.nhs.uk/Id/ods-organization-code"
* managingOrganization.identifier.value = "RCB"

* partOf = Reference(InterweaveLocationExample-Building)
* partOf.display = "York Hospital:Jubilee Building"


// Room //////////////////////////////////////////////////////////////////////////////////////////
Instance: InterweaveLocationExample-Room-1
InstanceOf: InterweaveLocation
Description: "Interweave Location example - Room"

* insert Ruleset-ExampleMetaForHospital(Location)

* insert Ruleset-ExampleLocalId(location, RCB.LOC-XYZ456-1)

* status = http://hl7.org/fhir/location-status#active "Active"
* name = "York Hospital: Jubilee Building: Ward 27: Room 1"
* description = "Go to the main desk, then turn left by the green door at the end of the corridor"

* mode = http://hl7.org/fhir/location-mode#instance "Instance"
* type.coding = http://terminology.hl7.org/CodeSystem/v3-RoleCode#DERM "Dermatology clinic"
* physicalType.coding = http://terminology.hl7.org/CodeSystem/location-physical-type#ro "Room"

* managingOrganization = Reference(InterweaveOrganizationExample-AcuteTrust)
* managingOrganization.display = "York and Scarborough Teaching Hospitals NHS Foundation Trust"
* managingOrganization.identifier.system = "https://fhir.nhs.uk/Id/ods-organization-code"
* managingOrganization.identifier.value = "RCB"

* partOf = Reference(InterweaveLocationExample-Ward-27)
* partOf.display = "York Hospital: Jubilee Building: Ward 27"

* hoursOfOperation.daysOfWeek[0] = #mon
* hoursOfOperation.daysOfWeek[+] = #tue
* hoursOfOperation.daysOfWeek[+] = #thu
* hoursOfOperation.daysOfWeek[+] = #fri
* hoursOfOperation.openingTime = "08:30:00"
* hoursOfOperation.closingTime = "05:30:00"
* availabilityExceptions = "Reduced capacity is available during the Christmas period"


// House ///////////////////////////////////////////////////////////////////////////////////////
Instance: InterweaveLocationExample-House
InstanceOf: InterweaveLocation
Description: "Interweave Location example - House"

* insert Ruleset-ExampleMetaForHospital(Location)

* status = http://hl7.org/fhir/location-status#active "Active"
* name = "42 Grove Street, LS21 1PF"

* mode = http://hl7.org/fhir/location-mode#instance "Instance"
* type.coding = http://terminology.hl7.org/CodeSystem/v3-RoleCode#PTRES "Patient's Residence"
* physicalType.coding = http://terminology.hl7.org/CodeSystem/location-physical-type#ho "House"

* address.line[0] = "42 Grove Street"
* address.line[1] = "Northville"
* address.city = "Overtown"
* address.district = "West Yorkshire"
* address.postalCode = "LS21 1PF"


// Social Care Dept ///////////////////////////////////////////////////////////////////////////////
Instance: InterweaveLocationExample-SocialCare
InstanceOf: InterweaveLocation
Description: "Interweave Location example - Care Home"

* insert Ruleset-ExampleMetaForSocialCare(Location)

* insert Ruleset-ExampleLocalId(location, 212.LOC-1234)

* status = http://hl7.org/fhir/location-status#active "Active"
* name = "St Hildas Care Home"

* mode = http://hl7.org/fhir/location-mode#instance "Instance"
* type.coding = http://terminology.hl7.org/CodeSystem/v3-RoleCode#CSC "community service center"
* type.text = "Care Home"
* physicalType.coding = http://terminology.hl7.org/CodeSystem/location-physical-type#si "Site"

* telecom[0].system = #phone "Phone"
* telecom[0].value = "01234 345347"

* managingOrganization = Reference(InterweaveOrganizationExample-SocialCare)
* managingOrganization.display = "Leeds City Council"
* managingOrganization.identifier.system = "https://fhir.nhs.uk/Id/ods-organization-code"
* managingOrganization.identifier.value = "212"

// Clinic ///////////////////////////////////////////////////////////////////////////////
Instance: InterweaveLocationExample-GeneralPracticeNurseClinic
InstanceOf: InterweaveLocation
Description: "Interweave Location example - GeneralPracticeNurseClinic"

* insert Ruleset-ExampleMetaForSocialCare(Location)

* identifier.system = "https://fhir.nhs.uk/Id/ods-site-code"
* identifier.value = "GP8D7"

* status = http://hl7.org/fhir/location-status#active "Active"

* name = "White Rose GP Practice Nurse Clinic"

* type = http://terminology.hl7.org/CodeSystem/v3-RoleCode#GIM "General internal medicine clinic"

* physicalType.coding = http://terminology.hl7.org/CodeSystem/location-physical-type#si "Site"

* telecom.system = #phone
* telecom.value = "0113 243 3166"

* managingOrganization = Reference(InterweaveOrganizationExample-AcuteTrust)
* managingOrganization.display = "York and Scarborough Teaching Hospitals NHS Foundation Trust"
* managingOrganization.identifier.system = "https://fhir.nhs.uk/Id/ods-organization-code"
* managingOrganization.identifier.value = "RCB"