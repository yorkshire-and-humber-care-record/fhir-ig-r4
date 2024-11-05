Alias: $service-category = http://terminology.hl7.org/CodeSystem/service-category
Alias: $sct = http://snomed.info/sct
Alias: $UKCore-PracticeSettingCode = https://fhir.hl7.org.uk/CodeSystem/UKCore-PracticeSettingCode
Alias: $service-provision-conditions = http://terminology.hl7.org/CodeSystem/service-provision-conditions
Alias: $service-referral-method = http://terminology.hl7.org/CodeSystem/service-referral-method

Instance: InterweaveHealthcareServiceExample-OrthopaedicService
InstanceOf: InterweaveHealthcareService
Description: "Interweave HealthcareService Example - OrthopaedicService"

* insert Ruleset-ExampleMetaForHospital(HealthcareService)

* identifier.system = "https://fhir.nhs.uk/Id/ods-site-code"
* identifier.value = "RR813"

* active = true

* providedBy = Reference(InterweaveOrganizationExample-AcuteTrust) "York and Scarborough Teaching Hospitals NHS Foundation Trust"

* category = $service-category#35 "Hospital"
* category.text = "Hospital"

* type = $sct#310161006 "Orthopaedic service"

* specialty = $UKCore-PracticeSettingCode#110 "Trauma and Orthopaedics"

* location = Reference(InterweaveLocationExample-Room-1)

* name = "Orthopaedic Trauma Services"

* comment = "Our department is part of the Major Trauma Service at Scarborough General hospital. The Trauma and orthopaedic team care for a range of trauma related injuries and conditions, with each patient’s treatment managed to their needs. Our clinics run every day; however these are specialist clinics to ensure that patients are seen by the appropriate consultant for specialised care."

* telecom[0].system = #phone
* telecom[=].value = "0113 3926991"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "patientexperience.ysth@nhs.net"
* telecom[=].use = #work

* program.text = "York Orthopaedic Outreach Service"

* characteristic.coding.display = "Wheelchair access"

* referralMethod[0] = $service-referral-method#phone "Phone"
* referralMethod[+] = $service-referral-method#elec "Secure Messaging"
* referralMethod[+] = $service-referral-method#semail "Secure Email"

* appointmentRequired = false

* availableTime.daysOfWeek[0] = #mon
* availableTime.daysOfWeek[+] = #tue
* availableTime.daysOfWeek[+] = #thu
* availableTime.daysOfWeek[+] = #fri
* availableTime.availableStartTime = "08:30:00"
* availableTime.availableEndTime = "05:30:00"

* availabilityExceptions = "Reduced capacity is available during the Christmas period"