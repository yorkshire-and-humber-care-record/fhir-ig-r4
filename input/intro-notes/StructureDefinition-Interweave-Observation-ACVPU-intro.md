Status: DRAFT: For Review

### **Introduction**
This profile sets out the expectations for the interweave ACVPU observation resource. The base for this profile is the [UK Core Observation ACVPU](https://simplifier.net/hl7fhirukcorer4/ukcore-observation-acvpu).

We have enforced the use of SNOMED codes where possible and have removed the component field. This is to ensure that the valueCodeableConcept field is used to provide the result.


#### **Mandatory fields**
The following mandatory fields are defined:

1. **status** – Fixed value of ‘final’. Only finalised observations should be shared.

2. **category** – Fixed value of ‘vital-signs’.

3. **code** – Fixed value of  SCT: 1104441000000107 (ACVPU (Alert Confusion Voice Pain Unresponsive) scale score).

4. **subject** – Reference to the patient who is the subject of this measurement.

5. **effective** – An important field to provide details of the time/time period during which the observation was taken.

#### **Must Support fields**
In addition the following fields are "Must Support" - ie they must be populated if relevant and known. 

1. **identifier** - A Local Id should be provided, such that could be quoted if manually getting in touch to find out more.

2. **encounter** – his will typically be the encounter the event occurred within, but some events may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter (e.g. pre-admission laboratory tests). For some observations it may be important to know the link between an observation and a particular encounter.

3. **performer** – We limit this field to reference practitioner / practitionerRole/ CareTeam resources only. The organization responsible for the observation can be obtained via the provenance tag.

4. **note** – Comments in addition to the result are often recorded for observations, it is therefore important to provide this field when available to give the consumer the full result information.

5. **valueCodeableConcept** – The actual result recorded. This is a required binding to the Care Connect ACVPU code system which Include codes from SNOMED_CT where constraint Equal (248234008 (Mentally alert) OR 300202002 (Responds to voice) OR 450847001 (Responds to pain) OR 422768004 (Unresponsive) OR 130987000 (Acute confusion))

6. **dataAbsentReason** - The reason why the result is missing, this is valuable if a value has not been obtained for some reason e.g. a patient refused. This field can only be provided when there is no value present.

#### **Optional fields**
Other fields are optional and may be populated if known - on the understanding that not all data consumers will necessarily make use of them. Points of note include:

 - **method** – Option to provide the mechanism used to perform the observation

 - **device** – Opportunity to provide a link to a device resource from which was used to obtain the observation.

#### **Discouraged or Removed fields**

 - **basedOn** – This field is discouraged as it does not appear to provide information which would be beneficial in a shared care record. It also allows references to a raft of request/order resources which introduces a lot of complexity for a data consumer.

  - **partOf** – This field is discouraged as it does not appear to provide information which would be beneficial in a shared care record. It also allows references to a raft of request/order resources which introduces a lot of complexity for a data consumer.

 - **derivedFrom** – This field is discouraged as it does not appear to provide information which would be beneficial in a shared care record. It also allows references to a raft of request/order resources which introduces a lot of complexity for a data consumer.

 - **issued** –  This field has been removed as this information can be taken from the mandatory meta.lastUpdated field, and to also avoid any confusion with the other date fields.

 - **Component** – Removed to aid the data consumer, we ask that the result is provided in the valueCodeableConcept field and not in the component field.

 - **specimen** – Removed.
 - **bodysite** - Removed.
 - **Interpretation** - Removed.
 - **ReferenceRange** - Removed.