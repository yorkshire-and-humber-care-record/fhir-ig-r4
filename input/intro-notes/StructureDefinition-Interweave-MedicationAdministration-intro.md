Status: DRAFT: For Review


### **Introduction**
This profile sets minimum expectations for the Interweave madicationAdministration resource, to record event of a patient consuming or otherwise being administered a medication. We use the [madicationAdministration](https://simplifier.net/hl7fhirukcorer4/ukcore-medicationadministration) structure definition as a base to this profile.

It will principally be used within care settings (including inpatient) to record the capture of medication administrations, including self-administrations of oral medications, injections, intra-venous adjustments, etc. It can also be used in outpatient settings to record allergy shots and other non-immunization administrations. In some cases, it might be used for home-health reporting, such as recording self-administered or even device-administered insulin. Related resources tie this event to the authorizing prescription, and the specific encounter between patient and health care practitioner.


#### **Mandatory fields**
The following fields are mandatory:

- **status** - Will generally be set to show that the administration has been completed. For some long running administrations such as infusions it is possible for an administration to be started but not completed or it may be paused while some other process is under way.

- **category** – Indicates where the medication is expected to be consumed or administered. We also make this a required binding.

- **medication[x]** - Identifies the medication that was administered. This is either a link to a resource representing the details of the medication or a simple attribute carrying a code that identifies the medication from a known list of medications.  When providing the referencing resource, the reference.display field should be populated with the name of the medication which will be a DM&D description.

- **subject** – A reference to the patient who the request is for. To aid the data consumer, the display element should contain the patient’s name.

- **effective** – An important field to provide details of the time/time period during which the medication was administered.


### **Must Support fields**
In addition, the following fields are "Must Support" - i.e. they must be populated if relevant and known:

- **identifier** – a Local Id should be provided, such that could be quoted if manually getting in touch to find out more

- **context** - This field is renamed to Encounter in R4. Here we limit the field to only allow references to an encounter resource. For a repeat prescriptions, this is the encounter where the repeat was authorised. For all others this is the encounter where the specific issue was authorised.

- **dosage** - Details of how medication was taken, dosage information details e.g. dose (The amount of the medication given at one administration event.), rate (Identifies the speed with which the medication was or will be introduced into the patient. Typically the rate for an infusion), site, route, method (A coded value indicating the method by which the medication is intended to be or was introduced into or on the body(most commonly used for injections)) etc.

#### **Optional fields**
Other fields are optional and may be populated if known - on the understanding that not all data consumers will necessarily make use of them. Optional fields to note include:

- **statusReason** - A code indicating why the administration was not performed.

- **performer** - Required to populate if known. The main purpose would be to provide details of a Practitioner who can give more information about the condition. Therefore it should not be populated with details of purely admin staff who may have keyed in the data. If the asserter is not populated then an unknown Practitioner should be assumed.

   *A further consideration is the possibility of a Condition being asserted by a non-care-professional, for example the Patient themselves or a relative. FHIR caters for this possibiity by allowing the asserter to be a Patient or RelatedPerson, and this option is left open here.*

- **resonCode** - A code indicating why the medication was given.

- **reasonReference** – Option to provide more detailed information via Observation and/or a condition resource which represent the reason for the medication.

- **request** - Link to the MedicationRequest that this MedicationAdministration is based on.

- **device** - The device used in administering the medication to the patient. For example, a particular infusion pump.

- **note** - Extra information about the medication administration that is not conveyed by the other attributes.

#### **Discouraged or Removed fields**

- **instantiates** - Removed.

- **partOf** – It is not the intention to create a complex grouping or hierarchy of medication information, a simple flat structure is informative and preferred. Therefore,this fields have been removed.

- **supportingInformation** – Removed. This field allows reference to any type of resource which is very open and may cause confusion to the consumer. GPC also do not use this field

- **eventHistory** – Removed. Not required for the shared care record.