Status: DRAFT: For Review

**Definition:** A reason why a person is receiving support.

### **Introduction**
This profile sets minimum expectations for the Social Care Support Reason resource which is modelled using the [UK Core Condition](https://simplifier.net/HL7FHIRUKCoreR4/UKCore-Condition) resource. The FHIR Condition resource was chosen to model the Support Reason as it was the most akin in terms of logic and structure. Many of the irrelevant health fields have been stripped from this resource which has created a clear and concise model for population. We will simply refer to this resource as a Support Reason throughout the remainder of the notes section. 

#### **Coverage and references**
 - A Data Provider MUST offer FHIR resources to represent its own service users' support reasons. 
 - If the value held in the primarySupportReasonFlag changes, this should end date the current support reason and create a new record.
 - When referencing a Support Reason from another resource, the provider must populate the reference.display with the value held in the Support Reason code.display.

#### **Support Reason Period**
The Support Reason Period is the duration where support is given for the specified reason. The Condition resource offered two date fields which seemed to be suitable candidates for holding this data these being 'onset' and 'abatement'. However, the description of these fields, and rules which needed to be applied during their usage in order to be FHIR compliant, made using them unnecessarily complicated. Therefore, we have chosen to remove both date fields, and create our own extension, SupportReasonPeriod, to house this data. 

#### **Mandatory fields**
The following fields are mandatory:

1. **clinicalStatus** - A mandatory flag to indicate whether the support reason is active or not. We limit the valueset to the following values; active | inactive

2. **category** - This provides a level of categorisation i.e. Physical Support, Sensory Support etc. We extend the care connect valueset to include a defined a list of codes derived from the Social Care Client Level Data V5 Specification. The care connect values are not applicable for social care purposes and should be ignored. Unfortunately we are unable to remove them from the valueset, as the care connect profile marks it as extensible.

3. **code** - code is used to house the 'type' of support reason. This should always be known, and vital for meaningful display purposes. We have defined a list of codes derived from the Social Care Client Level Data V5 Specification.

4. **subject** - The person which is the subject of the support reason.

5. **supportReasonPeriod** - The date that the person started to receive support for this support reason. Start date of the person receiving support is mandatory. End date is marked as Must support and should be populated if known to represent the date that the person stopped receiving support for this reason.

#### **Must Support fields**
In addition, the following fields are "Must Support" - i.e. they must be populated if relevant and known:

1. **primarySupportReason** - This is an extension required by social care to specify whether this is the person's primary reason for support. It is simple true/false field and should be offered where known.

#### **Optional fields**
Other fields are optional and may be populated if known - on the understanding that not all data consumers will necessarily make use of them. Optional fields to note include:

 - **note** - Use note to enter further detail on the support reason.
 
 - **recordedDate** - The date that the support reason was recognised/diagnosed.

 - **asserter** - Optionally provide the practitioner who asserted the support reason.

#### **Discouraged or Removed fields**

- **abatement** and **onSet** - Removed to avoid confusion when supplying the Support Reason Period (See mandatory notes section above). 

- **ConditionEpisode** - An extension which is not relevant here.

The following fields have been removed as they capture Health Care related data which is not relevant in Social Care:

 - **verificationStatus**
 - **severity** 
 - **bodySite** 
 - **stage** 
 - **evidence**
 - **encounter**
 - **recorder**