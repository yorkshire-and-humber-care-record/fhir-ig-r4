Alias: $UKCore-NHSNumberVerificationStatusEngland = https://fhir.hl7.org.uk/CodeSystem/UKCore-NHSNumberVerificationStatusEngland

Profile: InterweavePatient
Parent: UKCore-Patient
Id: Interweave-Patient
Description: "Interweave Patient resource profile - DRAFT."
Title: "InterweavePatient"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

* extension[birthPlace] ^short = "DISCOURAGED: could be useful but seems unlikely to be relevant to ongoing regional care whilst they are still alive"
* extension[cadavericDonor] ^short = "DISCOURAGED: could be useful but seems unlikely to be relevant to ongoing regional care whilst they are still alive"
* extension[deathNotificationStatus] ^short = "DISCOURAGED: this is generally managed Nationally through PDS and not needed again here"
* extension[ethnicCategory].valueCodeableConcept from UKCore-EthnicCategory (required)

* identifier 1..*
* identifier[nhsNumber] 1..1 MS
* identifier[nhsNumber].extension[nhsNumberVerificationStatus].valueCodeableConcept = $UKCore-NHSNumberVerificationStatusEngland#01 "Number present and verified" (exactly)
* identifier[nhsNumber].extension[nhsNumberVerificationStatus] ^short = "Verification status of the NHS Number - must be traced and verified"

///////////////////////////////////////
// --- Core Demographics ---
///////////////////////////////////////

// Active:  Assumption (in detailed definition for both STU3 and R4) is that it is "true" if not populated
// It is however important that both Providers and Consumers can handle appropriatly if "false"
// (Suggested good practice would just be to always populate it)
* active MS
* active ^short = "Whether this patient's record is in active use - must be both populated and understood if 'false'. See notes on usage."

* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.ordered = false
* name ^slicing.rules = #openAtEnd
* name contains 
    official 1..1 //and
   // other 0..*
* name[official] MS
* name[official].use 1..1 MS
* name[official].use = #official (exactly)
* name[official].family 1..1 MS
* name[official].family ^short = "Family name (often called 'Surname'). NB: First 3 letters must match PDS"
* name[official].given 1..* MS
* name[official].given ^short = "Given names (not always 'first'). Includes middle names. NB: First letter (initial) must match PDS"
* name[official].prefix 0..* MS
* name[official].suffix 0..* MS
* name[official].text ^short = "DISCOURAGED: Please do not rely on this. Providers might not populate and Consumers might not use. Instead display the name based on the detailed elements."
// * name[other].use 1..1 MS
// * name[other].text ^short = "DISCOURAGED: Please do not rely on this. Providers might not populate and Consumers might not use. Instead display the name based on the detailed elements."

// Telcom: Useful, "must support" (noting precident from US Core and IPS)
//    (Note that CareConnect already enforces that if a telcom is provided then a system and value must be included)
* telecom MS
* telecom.system MS
* telecom.value MS
* telecom.use MS


// Address: We want an address, unless actually not known (eg unconscious patient) and with as many details populated as known/relevant
//    This would normally be use = "home" - ie a permanent home address
//    (It is difficult to actaully specify anything as mandatory, but most subfields as Must Support)
* address MS
* address.use MS
* address.text ^short = "DISCOURAGED: Please do not rely on this. Providers might not populate and Consumers might not use. Instead display the address based on the detailed elements."
* address.line MS
* address.city MS
* address.district MS
* address.postalCode MS

// DoB: Basics which we want to always capture - and needed for PDS tracing
* birthDate 1..1 MS
* birthDate.id 0..0
* birthDate ^short = "The date of birth for the individual. NB: Must match PDS"

//contact: useful to provide relevant contact(s) if possible, and useful to get at least the name, telecom and relationship
// (leaving the other Contact fields such as address, gender, organisation, period as genuinely optional)
// Whilst it is difficult to mandate any of this due to varying circumstances, indicate Must Support the key details
* contact MS
* contact.relationship MS
* insert Ruleset-CodingWithSystemCodeDisplay(contact.relationship)
* contact.name MS
* contact.telecom MS
* contact.organization only Reference(Interweave-Organization)
* contact.name.text ^short = "DISCOURAGED: Please do not rely on this. Providers might not populate and Consumers might not use. Instead display the name based on the detailed elements."
* contact.address.text ^short = "DISCOURAGED: Please do not rely on this. Providers might not populate and Consumers might not use. Instead display the address based on the detailed elements."

* deceased[x] ^short = "Indicates if the individual is deceased or not. Do not populate - populated by PDS only."
//TODO: Compilier is only recognising the first resource in the list - to investigate
* link.other only Reference(Interweave-RelatedPerson or Interweave-Patient)
* link ^short = "Link to another patient resource that concerns the same actual person. (For example merged record)"


///////////////////////////////////////
// --- Other fields ---
///////////////////////////////////////
* generalPractitioner ^short = "DISCOURAGED: PDS is the master of this information, should not normally be populated by other systems."
* managingOrganization only Reference(Interweave-Organization)
* managingOrganization ^short = "DISCOURAGED: Already covered by the provenance tags. (If populated then must match this)"


* photo 0..0