///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Example
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Instance: InterweaveOrganizationExample-AcuteTrust
InstanceOf: InterweaveOrganization
Description: "Interweave Organization example - Acute Trust"

* insert Ruleset-ExampleMetaForHospital(Organization)

* insert Ruleset-ExampleLocalId(organization, RCB.HQ)

* identifier[+].system = "https://fhir.nhs.uk/Id/ods-organization-code"
* identifier[=].value = "RCB"

* active = true
* name = "York and Scarborough Teaching Hospitals NHS Foundation Trust"
* type.coding = Interweave-OrganizationType#197 "NHS Trust"

* telecom[0].system = #phone "Phone"
* telecom[0].value = "01234 123412"

* address.line[0] = "York Hospital"
* address.line[1] = "Wigginton Road"
* address.city = "York"
* address.postalCode = "YO31 8HE"

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Example
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Instance: InterweaveOrganizationExample-SocialCare
InstanceOf: InterweaveOrganization
Description: "Interweave Organization example - Social Care"

* insert Ruleset-ExampleMetaForSocialCare(Organization)

* identifier[0].system = "https://fhir.nhs.uk/Id/ods-organization-code"
* identifier[0].value = "212"

* active = true
* name = "Leeds City Council"
* type.coding = Interweave-OrganizationType#141 "Local Authority"

* telecom[0].system = #phone "Phone"
* telecom[0].value = "01234 123412"

* address.line[0] = "Civic Hall"
* address.line[1] = "Calverley Street"
* address.city = "Leeds"
* address.postalCode = "LS1 1UR"