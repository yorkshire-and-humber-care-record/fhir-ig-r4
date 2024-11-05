Status: DRAFT: For Review

### **Introduction**
This profile sets minimum expectations for the HealthcareService resource. We use the [HealthcareService](https://simplifier.net/HL7FHIRUKCoreR4/UKCore-healthcareservice) structure definition as a base to this profile.

The HealthcareService resource is used to describe a single healthcare service or category of services that are provided by an organization at a location.
The location of the services could be virtual, as with telemedicine services.

The HealthcareService resource can be used with the Schedule resource to define actual availability of the service.

#### **Mandatory fields**
The following mandatory fields are defined:
1. **Identifier** - a Local Id must be provided, such that could be quoted if manually getting in touch to find out more. Although UKCore has marked this element as optional, the NHS BaRS application has marked this element as a MUST.

2. **Active** - Essential if not active. Good practice to always populate anyway.

3. **Type** - The type of service that may be delivered or performed (ideally this would be an identifiable service - which is at a location, rather than the location itself). We use the value set based on SNOMED refset 1127531000000102: Services Simple Reference Set - for consistency with the Encounter, and because it is more relevant than the default FHIR example and also covers social care.

4. **Name** - The name of the Healthcare Serivice as presented to a consumer while searching.

#### **Must Support fields**
In addition the following fields are "Must Support" - ie they must be populated if relevant and known. 

1. **Telecom** - List of contacts related to this specific healthcare service, If this is empty, then refer to the location's contacts. Eg phone and/or email details. Useful for getting in contact for further information

2. **Appointment Required** - Indicates whether or not a prospective consumer will require an appointment for a particular service at a site to be provided by the Organization. Indicates if an appointment is required for access to this service.

3. **Coverage Area** - The location(s) that this service is available to (not where the service is provided).

4. **Available Time** - A collection of times that the Service Site is available. More detailed availability information may be provided in associated Schedule/Slot resources.

#### **Optional fields**
Other fields are optional and may be populated if known - on the understanding that not all data consumers will necessarily make use of them. Points of note include:

- **Category** - A general description under broad categorisation of the types of services that is to be performed during this appointment.

- **Specialty** - further information which may be useful about the type of specialty required. Knowing the Service Type is probably sufficient for a shared care record, with the Specialty being more relevant to resourcing the correct staff member in a scheduling system. However obviously useful additional information if available.

- **Location** - the location provides essential information about where the service will take place. Exactly what is appropriate here will depend on the care setting:
   - For a hospital information should be provided down to the “clinic” level. Thus making it easir to find, as well as potentially giving some insight into the type of treatment being provided.
   - For other (smaller) locations then the "site" level may be sufficient
   - Other types of care (eg community, emergency) may take place at home or in a vehicle

- **comment** - Any additional description of the service and/or any specific issues not covered by the other attributes, which can be displayed as further detail under the serviceName.

- **Provided By** - Organization that provides this service. Note: this will often be the same as the provenance of the message, but not necessarily if external locations are being referenced 

- **Program** - Programs that this service is applicable to. Programs are often defined externally to an Organization, commonly by governments; e.g. Home and Community Care Programs, Homeless Program etc. that this service applies to.

- **Characteristic** - Collection of characteristics such things as 'is wheelchair accessible'. at the time of writing, the current FHIR standards does not have approved valueSet binding for this element, please get in touch with possible values, so that we can create custom valueSet / use local valueSet.

- **Referral Method** - The methods of referral can be used when referring to a specific HealthcareService resource.

- **Availability Exceptions** - A description of site availability exceptions, e.g. public holiday availability. Succinctly describing all possible exceptions to normal site availability as details in the available Times.

#### **Discouraged or Removed fields**
 - **extraDetails** - REMOVED. Extra details about the service that can't be placed in the other fields.

 - **Photo** - REMOVED. Not relevant here, and adds size and complexity to the content.

 - **Service Provision Code** - DISCOURAGED. The code(s) that detail the conditions under which the healthcare service is available/offered.

 - **Eligibility** - REMOVED. Does this service have specific eligibility requirements that need to be met in order to use the service.

 - **Eligibility Note** - REMOVED. Describes the eligibility conditions for the service. Inline with R4 we have also removed this element.

 - **Communication** - DISCOURAGED. Some services are specifically made available in multiple languages, this property permits a directory to declare the languages this is offered in. Typically this is only provided where a service operates in communities with mixed languages used. Not relevant to current use-cases within the Shared care record.

 - **notAvailable** - DISCOURAGED. The HealthcareService is not available during this period of time due to the provided reason..

 - **Endpoint** - REMOVED. Technical endpoints are captured elsewhere (ie via the Participant Registry)