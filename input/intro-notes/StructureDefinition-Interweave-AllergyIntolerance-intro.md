Status: Active: DRAFT: For Review

### **Introduction**
This profile sets out the expectations for the interweave allergy intolerance resource. We use the [UKCore-AllergyIntolerance](https://simplifier.net/HL7FHIRUKCoreR4/UKCore-AllergyIntolerance) structure definition as a base to this profile.

#### **Mandatory fields**
The following mandatory fields are defined:

1. **verificationStatus** – Specify whether the allergy/intolerance is confirmed or unconfirmed.

2. **type** – Specify whether an allergy or intolerance is being modelled.

3. **patient** – The person who has the allergy/intolerance.

4. **recordedDate** – This should be the date that the allergy/intolerance was recorded. The date that the allergy/intolerance was identified should be captured in the onset[x] field.

5. **code** – What is the allergy or intolerance. We stipulate a preferred binding to the SNOMED / dm+d concepts below, with the understanding that local code sets are widely in use and mapping from local codes to SNOMED / dm+d maybe troublesome. However, every effort should be made to map, and where it is deemed unachievable, you will need to contact interweave team to gain explicit permission to use your own local code set: 

    - A set of codes from the following dm+d (dictionary of medicines and devices) concept classes that define a medication or medication ingredient that the patient has an allergy or intolerance to:

        * VTM – Virtual Therapeutic Moiety
        * VMP – Virtual Medicinal Product
        * AMP – Actual Medicinal Product
        * Ingredient

    - A set of codes from the SNOMED CT UK coding system that:

        * identify a substance (105590001) or pharmaceutical / biologic product (373873005) that the patient has an allergy or intolerance to 
        * state that the patient has no known allergy (716186003) 
        * provide a degrade of information about a drug (196461000000101) or non-drug allergy (196471000000108).

    - Where no dm+d or SNOMED CT coded information is available, a specific code from the nullFlavor Code System can be used instead to indicate this.


#### **Must Support fields**
In addition the following fields are "Must Support" – i.e., they must be populated if relevant and known. 

1. **clinicalStatus** – It is important to provide the clinical status of the allergy or intolerance. Please See Invariants here which must be observed when populating this field.

    * AllergyIntolerance.clinicalStatus SHALL be present if verificationStatus is not entered-in-error.
    * AllergyIntolerance.clinicalStatus SHALL NOT be present if verification Status is entered-in-error

    - **clinicalStatus.allergyIntoleranceEnd** - The date when the allergy or intolerance clinicalStatus is updated to inactive or resolved.

2. **category** – The classification of the substance or pharmaceutical product that is considered to be responsible for the adverse reaction. This is a must support field as not all clinical systems currently capture this information.

3. **criticality** – Used to record the severity of the reaction.

4. **Onset[x]** – When the allergy or intolerance was identified. The Estimated or actual date, date-time, or age when allergy or intolerance was identified. We have removed the Range and String data types from this field as they were deemed unnecessary, and it reduced the complexity of processing multiple data types for the data consumer.

5. **asserter** – The source of the information about the allergy. This can be a reference to a patient, related person, or a practitioner.

6. **reaction** – This field can be used to present the history of known reactions. The reaction field has a number of important child fields that should/must be provided as below:

    - **manifestation** – This is a mandatory field when providing the reaction. It is used to record the signs/symptoms of the reaction.

    - **onset** – this is a must support field which gives the date/time of when the reaction occurred.

	- **severity** – another important must support field which details the severity of the reaction event.

    - **substance** – This is an optional field, but it is important to note its usage. This is the specific substance or pharmaceutical product considered to be responsible for the event. e.g. If a patient is allergic to egg, if they are given a vaccine containing egg, which initiates a reaction, it is the vaccine that should be recorded here.


#### **Optional fields**
Other fields are optional and may be populated if known – on the understanding that not all data consumers will necessarily make use of them. Points of note include:

 - **identifier** – Usually a Local Id that is provided which can be quoted if manually getting in touch to find out more information. In most Interweave profiles this is a must support field, however, it is more likely that a patient identifier(NHS number) would be quoted when wanting to find out more about a persons allergies, and therefore this is marked as optional.

 - **encounter** – This is an extension introduced by care connect to pre-adopt the new ‘encounter’ field which is present in R4. It can be used to provide a link to the encounter where the allergy or intolerance was asserted.

 - **allergyEnd** – Option to provide the date and reason that the allergy is not longer valid.
   
 - **evidence** – Option to provide a reference to a diagnostic report which confirms the presence of an allergy or an intolerance.

 - **recorder**: Option to provide the practitioner or patient who recorded the adverse reaction.

 - **note** – Additional information about the allergy/intolerance, which is not captured elsewhere, can be entered within the notes section. For example, this could be information about how to care for an individual after exposure to a reactive substance. Care must be taken when populating this field, and only information which is deemed suitable for use within the shared care record should be populated here.

#### **Discouraged or Removed fields**

 - **last Occurrence** – This field has been discouraged. It is used to record the date/time of the last known occurrence of a reaction. However, it is deemed that this could be misleading unless records are routinely checked and kept up to date.