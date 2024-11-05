Status: DRAFT: For Review

### **Introduction**
This profile sets out the expectations for the interweave blood pressure observation resource. The base for this profile is the [UK Core Observation Vital Signs Blood Pressure](https://simplifier.net/hl7fhirukcorer4/ukcore-observation-vitalsigns-bloodpressure) and we have made little adjustment to this base profile. We have enforced the use of SNOMED codes where possible.

#### **Mandatory fields**
The following mandatory fields are defined:

1. **status** – Fixed value of ‘final’. Only finalised observations should be shared.

2. **category** – Fixed value of ‘vital-signs’.

3. **code** – Fixed value of a LOINC "magic code" describing the type of observation SHALL be present. (LOINC: 85354-9(Blood pressure panel with all children optional)). There is also a mandated set of SNOMED CT codes defined in UK Core Blood Pressure with preferred binding.

4. **subject** – Reference to the patient who is the subject of this measurement. 

5. **effective** – An important field to provide details of the time/time period during which the observation was taken.

6. **component** – The component field contains two (SystolicBP and DiastolicBP) slices, one which represents the systolic measurement (mandatory) and the other the diastolic. Both components must be populated. Each slice within the component field has a number of important child fields that should/must be provided as below:

    - **SystolicBP** 

        - **code** – Fixed value of a LOINC "magic code" describing the type of observation SHALL be present. (LOINC: 8480-6(Systolic blood pressure)). There is also a mandated set of SNOMED CT codes defined in UK Core Blood Pressure Systolic with preferred binding.

        - **code.text** – Fixed value of 'Systolic blood pressure'.

        - **valueQuantity** – The actual result recorded.

        - **interpretation** – This is also known as the ‘abnormal flag’ and is regularly recorded alongside the actual result. It is used to signal the meaning of the result.

        - **referenceRange** - To aid the interpretation of a result, it is important to include the reference range.

    - **DiastolicBP** 

        - **code** – Fixed value of a LOINC "magic code" describing the type of observation SHALL be present. (LOINC: 8462-4(Diastolic blood pressure)). There is also a mandated set of SNOMED CT codes defined in UK Core Blood Pressure Diastolic with preferred binding.

        - **code.text** - Fixed value of 'Diastolic blood pressure'.

        - **valueQuantity** – The actual result recorded.

        - **interpretation** – This is also known as the ‘abnormal flag’ and is regularly recorded alongside the actual result. It is used to signal the meaning of the result.

        - **referenceRange** - To aid the interpretation of a result, it is important to include the reference range.

        - **dataAbsentReason** - The reason why the result is missing, this is valuable if a value has not been obtained for some reason e.g. a patient refused. This field must be provided when there is no value present.
    

#### **Must Support fields**
In addition the following fields are "Must Support" - ie they must be populated if relevant and known. 

1. **identifier** – A Local Id should be provided, such that could be quoted if manually getting in touch to find out more.

2. **encounter** – his will typically be the encounter the event occurred within, but some events may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter (e.g. pre-admission laboratory tests). For some observations it may be important to know the link between an observation and a particular encounter.

3. **performer** – We limit this field to reference practitioner / practitionerRole/ CareTeam resources only. The organization responsible for the observation can be obtained via the provenance tag.

4. **note** – Comments in addition to the result are often recorded for observations, it is therefore important to provide this field when available to give the consumer the full result information.

5. **bodySite** – A long list of SNOMED codes which represent the observed parts of the body. 

#### **Optional fields**
Other fields are optional and may be populated if known - on the understanding that not all data consumers will necessarily make use of them. Points of note include:
 
 - **method** – Option to provide the mechanism used to perform the observation
 
 - **device** – Opportunity to provide a link to a device resource from which was used to obtain the observation.
 
#### **Discouraged or Removed fields**

 - **basedOn** – This field is discouraged as it does not appear to provide information which would be beneficial in a shared care record. It also allows references to a raft of request/order resources which introduces a lot of complexity for a data consumer.
 
 - **partOf** – This field is discouraged as it does not appear to provide information which would be beneficial in a shared care record. It also allows references to a raft of request/order resources which introduces a lot of complexity for a data consumer.

 - **issued** –  This field has been removed as this information can be taken from the mandatory meta.lastUpdated field, and to also avoid any confusion with the other date fields.

 - **hasMember** - Removed.

 - **dataAbsentReason** - Removed. This element would be covered as part of individual component for Systolic / Diastolic Blood pressure.

 - **derivedFrom** – This field is discouraged as it does not appear to provide information which would be beneficial in a shared care record. It also allows references to a raft of request/order resources which introduces a lot of complexity for a data consumer.

 - **referenceRange** - Removed. This element would be covered as part of individual component for Systolic / Diastolic Blood pressure.

 - **specimen** – Removed.

 - **interpretation** - Removed. This element would be covered as part of individual component for Systolic / Diastolic Blood pressure.

 - **focus** - Removed.