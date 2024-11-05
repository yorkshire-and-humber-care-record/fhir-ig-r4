Alias: $allergyintolerance-clinical = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
Alias: $allergyintolerance-verification = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification
Alias: $sct = http://snomed.info/sct

Instance: InterweaveAllergyIntoleranceExample-Amoxicillin
InstanceOf: InterweaveAllergyIntolerance
Description: "Interweave AllergyIntolerance Example - Amoxicillin"
//Usage: #example

* insert Ruleset-ExampleMetaForHospital(AllergyIntolerance)

* insert Ruleset-ExampleLocalId(AllergyIntolerance, RCB.ALL-Amox123)

* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* code = $sct#372687004 "Amoxicillin"

* patient = Reference(InterweavePatientExample-MustSupport) 
* patient.display = "Jane BLOGGS"

* type = http://hl7.org/fhir/allergy-intolerance-type#allergy "allergy"

//* encounter = Reference(Encounter/UKCore-Encounter-InpatientEncounter-Example)
* recordedDate = "2019-12-10T13:00:00+00:00"

* recorder = Reference(InterweavePractitionerExample-Consultant)
* recorder.display = "Dr Jane Bloggs"

* asserter = Reference(InterweavePractitionerExample-Consultant)
* asserter.display = "Dr Jane Bloggs"

* reaction.manifestation = $sct#247472004 "Urticarial rash"
* reaction.severity = #mild


////////////////////////////////////////////////////////////////////////

Instance: InterweaveAllergyIntoleranceExample-NKA
InstanceOf: InterweaveAllergyIntolerance
Description: "Interweave AllergyIntolerance Example - No Known Allergy"

* insert Ruleset-ExampleMetaForHospital(AllergyIntolerance)

* insert Ruleset-ExampleLocalId(AllergyIntolerance, RCB.ALL-NKA123)

* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"

* type = http://hl7.org/fhir/allergy-intolerance-type#allergy "allergy"

* code = $sct#716186003 "No Known Allergy (situation)"

* patient = Reference(InterweavePatientExample-MustSupport) 
* patient.display = "Jane BLOGGS"

* recorder = Reference(InterweavePractitionerExample-Consultant)
* recorder.display = "Dr Jane Bloggs"

* recordedDate = "2022-01-09T09:00:00Z"
