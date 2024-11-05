Status: DRAFT: For Review

**Definition** Information about a person that has a relationship with a patient. 

### **Introduction**

***NB: Whilst the term "Patient" is used by FHIR, the profile is equally relevant to a "citizen", "service user" or "client" in other contexts such as Social Care.***

This profile sets minimum expectations for the RelatedPerson resource to record Information about a person who has a relationship with a patient. We use the [relatedPerson](https://simplifier.net/hl7fhirukcorer4/ukcore-relatedperson) structure definition as a base to this profile.

This Resource will give the consumer the ability to see information about a person who has a relationship with a patient. The related person will always defined from the position of the patient e.g. This related person is the patient’s mother, spouse, brother etc. In Social Care, a related person may also play one or more roles in the service user’s support.

The RelatedPerson resource provides information about a person who is involved in the care of a patient but has no formal responsibility. RelatedPersons typically have a personal relationship with the patient such as a spouse, relative, friend, guardian, or attorney. RelatedPersons are commonly a source of information about a patient.

The distinction between Practitioner and RelatedPerson is a practitioner cares for multiple patients on behalf of a healthcare facility where a RelatedPerson performs care tasks for a specific patient and may not be associated with any healthcare facility.


#### **Coverage and references**

 - A Data Provider MUST offer RelatedPerson FHIR resources to represent its own patients' relationships (those that are relevant for regional sharing). 

 - The related person resource does not negate the use of the patient.contact field. This should still be used to specify the person who should be contacted in an emergency, and the related person should be used to model all other relationships.

 - When referencing a RelatedPerson the "reference" (URL of FHIR Resource) and "display" (related person's name) MUST be populated.

#### **Mandatory fields**
The following fields are mandatory:
1. **name** - "usual" name, what they liked to be known as, including given and family names. Its only relevant to capture the person's current name, no history is required.

2. **active** - A mandatory flag to indicate whether the relatedPerson record is active.

3. **patient** - To whom this person has a relationship with.

4. **relationship** - How this person is related to the patient e.g. mother, spouse, brother etc.

#### **Must Support fields**
In addition, the following fields are "Must Support" - i.e. they must be populated if relevant and known:

1. **telecom** - how the related person can be contacted e.g. phone and/or email details. It's only relevant to capture the person's current contact details, no telecom history is appropriate.

2. **socialCareSupportRole** (Extension) - This extension has been developed for use by the Social Care sector, who have a requirement to model the role(s) which a related person plays in a service user's support. We have specified a preferred interweave valueset for populating this field, which was developed with the Social Care Data Standards working group. Please note, that if ‘Other’ is entered here, then it is essential to provide additional detail of the role within the text field.

Background to extension: Initially we looked at whether we should  relationship field, given role is a different concept, it was agreed that this should be represented by a separate field. 

3. **period** - The period during which the relationship existed.

4. **address** - Can be provided if known and relevant. Only the person's current address should be captured. 

#### **Optional fields**
Other fields are optional and may be populated if known - on the understanding that not all data consumers will necessarily make use of them. Optional fields to note include:

- **contactPreference** (Extension) - The preferred method of contact, contact times and written communication format given by a Patient or Related Person.

- **copyCorrespondenceIndicator** (Extension) - Extension carrying a boolean indicator showing that a patient's contact or related person SHALL be copied in to patient correspondence.

- **gender and birthDate** - These can be provided if known, but it is felt that these do not add much value to the related person record.

- **identifier:localIdentifier** - An optional local identifier which may be helpful to identify the record at a local level.

- **communication** - A language which may be used to communicate with about the patient's health. If a related person does not speak the local language, interpreters may be required, so languages spoken and proficiency is an important things to keep track of both for patient and other persons of interest. If no language is specified, this implies that the default local language (English) is spoken.

#### **Discouraged or Removed fields**

- **photo** - removed - not relevant here and adds size and complexity to the content.