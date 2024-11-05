Alias: $service-category = http://terminology.hl7.org/CodeSystem/service-category
Alias: $sct = http://snomed.info/sct
Alias: $UKCore-PracticeSettingCode = https://fhir.hl7.org.uk/CodeSystem/UKCore-PracticeSettingCode

Instance: InterweaveScheduleExample-Immunization
InstanceOf: InterweaveSchedule
Description: "Interweave Schedule Example - Immunization"

* insert Ruleset-ExampleMetaForHospital(Schedule)

* identifier.system = "https://fhir.interweavedigital.nhs.uk/local/schedule/identifier"
* identifier.value = "RCB.4c8b068a-d610-427f-a508-6b7f90d47bf2"

* active = true

* serviceCategory = $service-category#17 "General Practice"

* serviceType = $sct#708190004 "Immunology service"

* specialty = $UKCore-PracticeSettingCode#313 "Clinical Immunology"

* actor = Reference(InterweaveLocationExample-GeneralPracticeNurseClinic) "White Rose GP Practice Nurse Clinic"

* planningHorizon.start = "2021-10-13T11:20:00+07:00"
* planningHorizon.end = "2021-10-13T11:50:00+07:00"

* comment = "The slots attached to this schedule should be specialized to cover immunizations within the clinic"