Status: DRAFT: For Review

### Introduction
This profile sets minimum expectations for the Practitioner resource. We use the [practitioner](https://simplifier.net/hl7fhirukcorer4/ukcore-practitioner) structure definition as a base to this profile.


This Resource will give the consumer the ability to see information on the person who is directly or indirectly involved in the provisioning of healthcare / social support.

The Practitioner Resource provides information about a person formally involved in the care of a patient on behalf of a healthcare facility. Practitioners include but are not limited to physicians, nurses, pharmacists, therapists, technologists, and social workers.

Please note, this resource could be classed as reference resource and is referenced within multiple other resources as a linked resoure, as such there would not be a specific panel for this resource within the UI.

#### **Practitioner coverage and references**

 - A Data Provider MUST offer Practitioner FHIR resources to represent its own practitioners
 - When referencing a Practitioner then "reference" (url to a FHIR Resource) and "display" (name), MUST be populated
   - For an external practitioner then the url could point to an ad-hoc Contained Resource
   - In addition the "identifier" in the reference MAY also be populated. This is not as straightforward as for Organisations (where the ODS Code is widely accepted), but most practitioners will have a professional id which could be populated to more definitively identify them.


#### **Mandatory fields**
1. **Name** - This is essential to indicate who the practitioner is. Only a single name is supported by Care Connect, and for this profile then at a minimum the Family Name is mandatory. (Note that in addition, Given Name, Prefix, and Suffix are considered "Must Support") 

2. **Identifier**: Must be populated to formally identify the practitioner. UKCore does not have any specific Guidance on range of possible identifiers, as part of Interweave guidance we have added slices for some of the known identifiers, these include:

    - https://fhir.nhs.uk/Id/sds-user-id (SDS User Id)
    - https://fhir.nhs.uk/Id/sds-role-profile-id (SDS Role Profile Id)
    - https://fhir.hl7.org.uk/id/gmp-number (General Medical Practitioner)
    - https://fhir.hl7.org.uk/id/gmc-number (General Medical Council / Consultant Code)
    - https://fhir.hl7.org.uk/id/nmc-number (Nursing and Midwifery Council)
    - https://fhir.hl7.org.uk/id/gphc-number (General Pharmaceutical Council Code)
    - https://fhir.hl7.org.uk/id/hcpc-number (Health and Care Professional Council Code)


    Or as a last resort if no other professional identifier:
    - https://fhir.yhcr.nhs.uk/Id/local-practitioner-identifier (Local identifier)

#### **Must Support fields**
In addition the following fields are "Must Support" - ie they must be populated if relevant and known:
- **Active** - Essential if not active. Good practice to always populate anyway.


#### **Optional fields**
Other fields are optional and may be populated if known - on the understanding that not all data consumers will necessarily make use of them. Points of note include:
- **Local Id** - In some cases there may be a local business identifier. Optional, to include if relevant.

- **Telecom** - It is very useful to provide a contact phone number and/or email if at all possible – to enable further enquiries about any information seen. However caution is needed, as these contact details may be widely seen throughout the region. Only work details suitable for receiving external enquires should be included. Specifically home phone numbers should not be shared.

- **Gender** - May be provided if known, but is not essential.

- **Communication** - Knowing which language(s) a practitioner speaks can help in facilitating communication with patients. Optional, as in general it is assumed that the employing organisation will make any necessary provisions and so largely not relevant for regional sharing.

#### **Discouraged or Removed fields**
- **Address** - Discouraged. Addresses should be provided instead on the relevant organisation / location records. For the purposes of regional sharing then practitioner home addresses must NOT be shared.

- **Birth Date** - Removed. For the purposes of regional sharing then the birth date could be considered as unnecessary personal information and is not required.

- **Photo** - Removed. At the present time then photos are not required. Excluded to avoid any complexities with sharing large image files.

- **Qualifications** - Removed. Not releavant to shared care record.