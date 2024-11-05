Status: DRAFT: For Review

### **Introduction**

This profile sets out the expectations for the Interweave medication resource. We use the [madication](https://simplifier.net/hl7fhirukcorer4/ukcore-medication) structure definition as a base to this profile.

The Medication resource allows for medications to be characterized by the form of the drug. For shared care, the importance needs to be placed on “What” the medication is and its form. We therefore have defined a very minimal dataset and removed all unnecessary fields.

#### **Mandatory fields**
The following fields are mandatory:

- **code** – This field is the most important, we need to know what the medication is. A SNOMED dm+d code MUST be supplied. 

#### **Must Support fields**
In addition, the following fields are "Must Support" - i.e. they must be populated if relevant and known:

- **form** – Describes the form of the item. Powder; tablets; capsule. sThis field is recommended by PRSB. Useful information if it is available.

#### **Optional fields**
Other fields are optional and may be populated if known - on the understanding that not all data consumers will necessarily make use of them. Optional fields to note include:

- **identifier** –  Allows for an additional local medication identifier to be shared in addition to the official DM&D identifier.

- **manufacturer** – Option to provide a reference to the organization which manufactured the medication.

- **amount** – Specific amount of the drug in the packaged product. For example, when specifying a product that has the same strength (For example, Insulin glargine 100 unit per mL solution for injection), this attribute provides additional clarification of the package amount (For example, 3 mL, 10mL, etc.)

- **batch** – Information that only applies to packages (not products), such as assigned lot number or when this specific batch of product will expire.

#### **Discouraged or Removed fields**
     
- **ingredient** – DISCOURAGED. This field has been discouraged to removed complexity. No real use case was identified at the time of writing, however, it was recognised that it may have a part to play in relation to allergies/intolerances, so it has been left in rather than removed. 

- The following fields have been removed to keep the medication model clear:

- status