Status: DRAFT: For Review

### **Introduction**
This profile sets out the expectations for the interweave blood oxygen saturation observation resource. The base for this profile is the [UK Core Observation Vital Signs Oxygen Saturation](https://simplifier.net/hl7fhirukcorer4/ukcore-observation-vitalsigns-oxygensaturation).

We stipulate the use of SNOMED concept codes where possible, and the result should be provided as a Quantity within the valueQuantity field. 

#### **Mandatory fields**
The following mandatory fields are defined:

1. **status** – Fixed value of ‘final’. Only finalised observations should be shared.

2. **category** – Fixed value of ‘vital-signs’.

3. **code** – Fixed value of  A LOINC "magic code" describing the type of observation SHALL be present. (LOINC: 2708-6(Oxygen saturation in Arterial blood)). There is also a mandated set of SNOMED CT codes defined in UK Core OxygenSaturation with required binding.

4. **subject** – Reference to the patient who is the subject of this measurement. 

5. **effective** – An important field to provide details of the time/time period during which the observation was taken.

6. **valueQuantity** – The actual result recorded.

#### **Must Support fields**
In addition the following fields are "Must Support" - ie they must be populated if relevant and known. 

1. **identifier** – A Local Id should be provided, such that could be quoted if manually getting in touch to find out more.

2. **encounter** – his will typically be the encounter the event occurred within, but some events may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter (e.g. pre-admission laboratory tests). For some observations it may be important to know the link between an observation and a particular encounter.

3. **performer** – We limit this field to reference practitioner / practitionerRole/ CareTeam resources only. The organization responsible for the observation can be obtained via the provenance tag.

4. **referenceRange** – To aid the interpretation of a result, it is important to include the reference range.

5. **note** – Comments in addition to the result are often recorded for observations, it is therefore important to provide this field when available to give the consumer the full result information.

#### **Optional fields**
Other fields are optional and may be populated if known - on the understanding that not all data consumers will necessarily make use of them. Points of note include:
 
 - **method** – Option to provide the mechanism used to perform the observation
 
 - **device** – Opportunity to provide a link to a device resource from which was used to obtain the observation.

 - **bodyStructureR5** (extension) - Indicates the body structure on the subject's body where the observation was made (i.e. the target site). This is a R5 backport.

 - **bodyPosition** (extension) - The position of the body when the observation was done, e.g. standing, sitting. To be used only when the body position in not precoordinated in the observation code.

 - **recordingSetting** (extension) - This extension allows the recording of the care setting in which an observation was performed in a clinical or non clinical setting.

#### **Discouraged or Removed fields**

 - **Component** – Removed to aid the data consumer, we ask that the result is provided in the valueQuantity field and not as a component.

 - **basedOn** – This field is discouraged as it does not appear to provide information which would be beneficial in a shared care record. It also allows references to a raft of request/order resources which introduces a lot of complexity for a data consumer.
 
 - **partOf** – This field is discouraged as it does not appear to provide information which would be beneficial in a shared care record. It also allows references to a raft of request/order resources which introduces a lot of complexity for a data consumer.

 - **issued** –  This field has been removed as this information can be taken from the mandatory meta.lastUpdated field, and to also avoid any confusion with the other date fields.

 - **dataAbsentReason** - Removed.
 - **interpretation** - Removed.
 - **specimen** – Removed.
 - **bodysite** - Removed.
 - **focus** - Removed.