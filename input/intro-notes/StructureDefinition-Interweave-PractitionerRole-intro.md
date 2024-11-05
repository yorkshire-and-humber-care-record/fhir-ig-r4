Status: DRAFT: For Review


### Introduction
This profile sets out the expectations for the interweave practitioner role resource. We use the [practitionerRole](https://simplifier.net/hl7fhirukcorer4/ukcore-practitionerrole) structure definition as a base to this profile.

This Resource will give the consumer the ability to see information on the specific set of Roles/Locations/specialties/services that a practitioner may perform at an organization within a period of time. For example Consultant or Nurse working within an acute setting and or Private setting or a social care worker within a local authority.

#### **Mandatory fields**
1. **active** - The default for this field is true, but it can be set to false should the role become inactive or if it has been entered in error. 

2. **practitioner** - Every practitioner role resource must reference a practitioner, and the practitioner’s name must be present in the 'display' sub field.

3. **code** - is used to record the roles which a practitioner is authorised to perform. UK Core have used SNOMED codes representating HealthCare Professional (223366009). We have also added a slice representing NHS SDS Job roles (used for RBAC), should you wish to share the roles assigned to the user. We treat this as the preferred field to populate. However, with prior authorisation, we will accept other code sets which represent the role.  

#### **Must Support fields**
In addition the following fields are "Must Support" - i.e., they must be populated if relevant and known:
1. **period** - The time period during which the practitioner is active in these roles.

2. **organization** - The organisation where the practitioner is performing the roles.

3. **Service Type (Extension)** - This describes the types of service which a practitioner can perform. We use the value set based on SNOMED refset 1127531000000102 (Services Simple Reference Set), which covers both health and social care.

4. **Specialty** – This field represents the clinical specialty of a practitioner. We use the UKCore value set (ukcore-practicesettingcode), which is based on the values in the NHS Data Dictionary MAIN SPECIALTY CODE.

5. **Telecom** - It can be useful to provide a contact phone number and/or email if at all possible – to enable further enquiries. However, caution is needed, as these contact details may be widely seen throughout the region. Only work details suitable for receiving external enquires should be included. Specifically, home phone numbers should not be shared.
 
6. **Location** – Option to provide the locations at which the practitioner provides care.

#### **Optional fields**
Other fields are optional and may be populated if known - on the understanding that not all data consumers will necessarily make use of them. Points of note include:

 - **identifier** - option to provide a business identifier that is for a specific practitioner’s role.


#### **Discouraged or Removed fields**
 - **healthCareService** - Removed. The information held in the serviceType extension is adequate to represent the services at a high level, and therefore this reference field is removed to avoid any confusion with the serviceType field.

 - **endpoint** - Removed. Technical endpoints are captured elsewhere (i.e. via the Participant Registry)

The following fields have also been removed as they are more relevant to a scheduling system rather than a shared care record:
 -	availableTime
 -	notAvailable
 -	availabilityExceptions