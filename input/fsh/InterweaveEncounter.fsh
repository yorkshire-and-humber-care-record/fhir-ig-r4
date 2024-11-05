Profile: InterweaveEncounter
Parent: UKCore-Encounter
Id: Interweave-Encounter
Description: "Interweave Encounter resource profile - DRAFT."
Title: "InterweaveEncounter"
* ^status = #draft
* ^version = "0.0.1"
* ^date = "2024-07-15"

* insert Ruleset-InterweaveBaseFields

* extension[Extension-UKCore-EmergencyCareDischargeStatus] MS

* extension contains Extension-Interweave-EDDischargeDestination named emergencyCareDischargeDestination 0..1
* extension[Extension-Interweave-EDDischargeDestination] MS

// Identifier:
// This is a business identifier for the Encounter.
// The value for a local identifier must be populated and contain the internal id for this Encounter on the providing system
// Thus providing a link back for any follow-up and/or troubleshooting
* identifier.assigner only Reference(Interweave-Organization)
* insert Ruleset-AddIdentifierSlicing
* insert Ruleset-AddLocalIdentifierMS(encounter)

// Status: Already mandatory in FHIR, emphasise with Must Support
// For now do not eliminate "planned" (as there may be some scenarios where clinical information is useful to capture in advance?)
// But in general advise against it
* status MS
* status ^short = "arrived | triaged | in-progress | onleave | finished | cancelled | entered-in-error | unknown (Note: 'planned' is also possible, but normally represented instead as an Appointment)"

// Status History: Make MS
//    It is considered to also be very important and useful to be able to see the progression and timeline of the encounter – from arrived, triaged, in-progress, etc
* statusHistory 0..* MS

// Class: Tighten the coding.
//      This is an essential field to categorise the encounter (eg emergency, inpatient, ambulatory, etc)
//      (Use our own list in case we want to add to it - including to allow Encounter Grouping)
//      However Class History we do not want.
//      Each encounter should be of exactly one class. If the class changes then this is modelled as a separate encounter

* class from Interweave-EncounterClass (required)
* class ^short = "Classification of the encounter. EXTENSIBLE on request, eg to cover other care settings"
* insert Ruleset-RawCodingWithSystemCodeDisplay(class)

* classHistory 0..0

//     Useful information based on several sets of SNOMED codes which describes the type of clinic or setting where the encounter occurred 
//      (eg in establishment, in own home, by telephone, etc)

* type 0..1 MS
* type from UKCore-EncounterType (required)
* insert Ruleset-CodingWithSystemCodeDisplay(type)

* serviceType MS
* insert Ruleset-CodingWithSystemCodeDisplay(serviceType)


// Subject: Every Encounter MUST be linked to a patient
//     (It is appreciated that sometimes the identity of the patient may not be known, but the encounter cannot be shared regionally until this is established)
* subject 1..1 MS 
// We only want Patients - not Groups
* subject only Reference(Interweave-Patient)
* insert Ruleset-ReferenceWithReferenceAndDisplay(subject)
* subject ^short = "The patient (NOT group) present at the encounter"

// Priority: This provides useful information about whether it was emergency, routine, elective, etc
* priority MS
* priority from Interweave-EncounterPriority (required)
* insert Ruleset-CodingWithSystemCodeDisplay(priority)

// A reference to the Referral which led to the appointment. Useful to provide if relevant and available
* insert Ruleset-ReferenceWithReferenceOnly(basedOn)

// Must be at least one participant - the Primary Performner
* participant 1..* MS
// Only one "type" per participant. Pick the main one. (Or list the whole participant several times)
* participant.type 1..1 MS
* participant.type from http://hl7.org/fhir/ValueSet/encounter-participant-type (required)
* insert Ruleset-CodingWithSystemCodeDisplay(participant.type)
// Must actually reference someone, and for this type of encounter they must be a practitioner
* participant.individual 1..1 MS
* participant.individual only Reference(Interweave-Practitioner)
* insert Ruleset-ReferenceWithReferenceAndDisplay(participant.individual) 

* appointment 0..1 MS
* insert Ruleset-ReferenceWithReferenceOnly(appointment)

// Period: Mandatory. When the encounter occurred is vital to know.
//      The start date/time is always mandatory, but as per the FHIR specification, the end date/time may be omitted if the encounter is ongoing
* period 1..1 MS
* period.start 1..1 MS
* period.end MS

// Length: (optional)
// This to some extent duplicates information that is already available via the Period, but useful to provide for analytical purposes
// In some systems it is used to indicate exactly how long a patient was in the consulting room (eg for billing), but this is not relevant here.
* length ^short = "Quantity of time the encounter lasted (less time absent). Please use minutes."

* insert Ruleset-CodingWithSystemCodeDisplay(reasonCode)

// Account: Excluded - we are not concerned with billing information
* account 0..0

// Diagnosis: Is Must Support, and if provided we want references only to a Condition, with role and ranking
* diagnosis MS
* diagnosis.condition 1..1 MS
* insert Ruleset-ReferenceWithReferenceOnly(diagnosis.condition)
* diagnosis.use 1..1 MS 
* diagnosis.use from http://hl7.org/fhir/ValueSet/diagnosis-role (required)
* insert Ruleset-CodingWithSystemCodeDisplay(diagnosis.use)
* diagnosis.rank 1..1 MS

// And if provided then we want at least a "Chief Complaint" (plus any others such as comorbidities if relevant)
* diagnosis ^slicing.discriminator.type = #value
* diagnosis ^slicing.discriminator.path = "use"  
* diagnosis ^slicing.ordered = false
* diagnosis ^slicing.rules = #open
* diagnosis contains chiefComplaint 0..1 MS

* diagnosis[chiefComplaint].use = http://terminology.hl7.org/CodeSystem/diagnosis-role#CC "Chief complaint" (exactly)

// Hospitalization: Must Support
//   However it will not always be relevant to actaully populate all fields
//   Depending on scenario it could include information on admission, discharge, both, or neither
//   However where relevant it must be populated - all information must be available in these base encounters
* hospitalization 0..1 MS
* insert Ruleset-Hospitalization

//   The location provides essential information about where the encounter took place. 
//   The intent is to provide information down to the “ward” level
//   It is useful to understand the history of where the patient has been seen, 
//   So the status and period MUST be populated, and a history SHOULD be provided.
* location 0..* MS
* location ^short = "Location the encounter takes place (at Ward level)"
* location.location MS
* insert Ruleset-ReferenceWithReferenceAndDisplay(location.location)
* location.status 1..1 MS
* location.period 1..1 MS

// Service Provider: Discouraged
//  This is covered via the provenance tags
* serviceProvider ^short = "DISCOURAGED: This is instead covered via the provenance tags"

// PartOf: Optional - may be used to point at an overarching EncounterGrouping.
// Generally it is a flat structure, EXCEPT for pointing specifically at an Encounter Grouping
* partOf 0..1
* partOf only Reference(Interweave-EncounterGrouping)
* insert Ruleset-ReferenceWithReferenceOnly(partOf)

////////////////////////////////////////////////////////////////////////////////////////
// Hospitalization Ruleset
////////////////////////////////////////////////////////////////////////////////////////
RuleSet: Ruleset-Hospitalization

// PreAdmissionIdentifier: Leave as optional (TODO confirm exactly what it is for)

// Extensions - these seem useful, make MS
* hospitalization.extension[Extension-UKCore-AdmissionMethod] MS

// Add an extension to provide information about whether the patient is medically safe for discharge
// The current status, date when predicted they will be ready, and actaul date when they were ready
// This has been requested as important information to inform planning and analysis (therefore make MS)
* hospitalization.extension contains Extension-Interweave-MedicallySafeForDischarge named medicallySafeForDischarge 0..1
* hospitalization.extension[Extension-Interweave-MedicallySafeForDischarge] MS
* hospitalization.extension[Extension-Interweave-MedicallySafeForDischarge] ^short = "Medically Safe for Discharge"


// Origin: Useful to provide if possible, especially if transfered from another institution
* hospitalization.origin ^short = "The location from which the patient came before admission. Useful to provide if possible, in particular to reference a 'site' if transfered from another institution."
* insert Ruleset-ReferenceWithReferenceAndDisplay(hospitalization.origin)

// AdmitSource: MS. Useful categorisation about the type of place the patient came from (eg home, other NHS hospital, care home, etc)
//   (Also tighten the code list)
* hospitalization.admitSource MS
* hospitalization.admitSource from Interweave-AdmissionSource (required)
* insert Ruleset-CodingWithSystemCodeDisplay(hospitalization.admitSource)

// Readmission: Optional.
//      If it is known to be a readmission then the field can be included and populated with the single code value of “R” for “Readmission”

// Diet Preferences and others: Discouraged. This information would be relevant for a hospital EPR (to inform management of the patient’s stay), but adds unnecessary complexity to the Hospitalisation linkage for a regional shared record. 
//     (If needed then could be captured other ways eg via flags, observations, care plan, etc)
* hospitalization.dietPreference ^short = "DISCOURAGED: Relevant for managing the patient's stay, but less so for regional sharing"
* hospitalization.specialCourtesy ^short = "DISCOURAGED: Relevant for managing the patient's stay, but less so for regional sharing"
* hospitalization.specialArrangement ^short = "DISCOURAGED: Relevant for managing the patient's stay, but less so for regional sharing"

// Destination: Important to provide if known, especially if transfered to another institution, but also to support discharge planning
* hospitalization.destination MS
* hospitalization.destination ^short = "Location to which the patient is discharged. Important to provide if known to support discharge planning, and/or to reference a 'site' if transfered to another institution."
* insert Ruleset-ReferenceWithReferenceAndDisplay(hospitalization.destination)

// Discharge Disposition: MS. Useful categorisation about the type of place the patient came from (eg home, other NHS hospital, care home, etc)
//   (Also tighten the code list, and use our own which updates CareConnect with the latest values from NHSDD)
* hospitalization.dischargeDisposition MS
* hospitalization.dischargeDisposition from Interweave-DischargeDestination (required)
* insert Ruleset-CodingWithSystemCodeDisplay(hospitalization.dischargeDisposition)

* identifier.id 0..0
* identifier.extension 0..0
* identifier[localIdentifier].id 0..0
* identifier[localIdentifier].extension 0..0
* statusHistory.id 0..0
* statusHistory.extension 0..0
* class.id 0..0
* class.extension 0..0
* type.id 0..0
* type.extension 0..0
* type.coding.id 0..0
* type.coding.extension 0..0
* serviceType.id 0..0
* serviceType.extension 0..0
* serviceType.coding.id 0..0
* serviceType.coding.extension 0..0
* priority.id 0..0
* priority.extension 0..0
* priority.coding.id 0..0
* priority.coding.extension 0..0
* subject.id 0..0
* subject.extension 0..0
* basedOn.id 0..0
* basedOn.extension 0..0
* participant.id 0..0
* participant.extension 0..0
* participant.type.id 0..0
* participant.type.extension 0..0
* participant.type.coding.id 0..0
* participant.type.coding.extension 0..0
* participant.individual.id 0..0
* participant.individual.extension 0..0
* appointment.id 0..0
* appointment.extension 0..0
* period.id 0..0
* period.extension 0..0
* reasonCode.id 0..0
* reasonCode.extension 0..0
* reasonCode.coding.id 0..0
* reasonCode.coding.extension 0..0
* diagnosis.id 0..0
* diagnosis.extension 0..0
* diagnosis.condition.id 0..0
* diagnosis.condition.extension 0..0
* diagnosis.use.id 0..0
* diagnosis.use.extension 0..0
//* diagnosis.use.coding.id 0..0
//* diagnosis.use.coding.extension 0..0
//* diagnosis[chiefComplaint].id 0..0
//* diagnosis[chiefComplaint].extension 0..0
* hospitalization.id 0..0
* hospitalization.origin.id 0..0
* hospitalization.origin.extension 0..0
* hospitalization.admitSource.id 0..0
* hospitalization.admitSource.extension 0..0
* hospitalization.admitSource.coding.id 0..0
* hospitalization.admitSource.coding.extension 0..0
* hospitalization.destination.id 0..0
* hospitalization.destination.extension 0..0
* hospitalization.dischargeDisposition.id 0..0
* hospitalization.dischargeDisposition.extension 0..0
* hospitalization.dischargeDisposition.coding.id 0..0
* hospitalization.dischargeDisposition.coding.extension 0..0
* location.id 0..0
* location.extension 0..0
* location.location.id 0..0
* location.location.extension 0..0
* partOf.id 0..0
* partOf.extension 0..0