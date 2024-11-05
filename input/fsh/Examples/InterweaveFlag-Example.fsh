Alias: $flag-category = https://fhir.interweavedigital.nhs.uk/CodeSystem/Interweave-FlagCategory
Alias: $sct = http://snomed.info/sct

Instance: InterweaveFlagExample-FoodAllergy
InstanceOf: InterweaveFlag
Description: "Interweave Flag example-FoodAllergy"

* insert Ruleset-ExampleMetaForHospital(Flag)

* meta.profile[1] = "http://hl7.org/fhir/StructureDefinition/Flag"

* identifier.system = "https://tools.ietf.org/html/rfc4122"
* identifier.value = "f4f703a9-ef92-4515-a7b0-99271428c84e"
* status = #active

* category = $flag-category#OTH "Other"
* category.text = "Diet"

* code = $sct#226201008 "Peanut-free diet"
* code.text = "Patient has a severe peanut allergy."

* subject = Reference(InterweavePatientExample-MustSupport)
* subject.display = "Jane BLOGGS"

* period.start = "2019-12-10T13:00:00+00:00"

* author = Reference(InterweavePractitionerExample-Consultant)
* author.display = "Dr Jane BLOGGS"