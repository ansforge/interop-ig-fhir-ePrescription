# Interop'Santé code system - Additional codes for relationship between action - Guide d'implémentation de la ePrescription v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Interop'Santé code system - Additional codes for relationship between action**

## CodeSystem: Interop'Santé code system - Additional codes for relationship between action 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/eprescription/CodeSystem/fr-additional-action-relationship-type | *Version*:0.1.0 |
| Draft as of 2025-10-28 | *Computable Name*:FrAdditionalActionRelationshipType |

 
Codes to specify relationship between action in a RequestGroup that are not in the valueSet http://hl7.org/fhir/ValueSet/action-relationship-type. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FrAdditionalRequestGroupRelationshipValueSet](ValueSet-fr-additional-action-relationship-type-value-set.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-additional-action-relationship-type",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/eprescription/CodeSystem/fr-additional-action-relationship-type",
  "version" : "0.1.0",
  "name" : "FrAdditionalActionRelationshipType",
  "title" : "Interop'Santé code system - Additional codes for relationship between action",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-10-28T16:06:33+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [
    {
      "name" : "Interop'Santé",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://interopsante.org/"
        }
      ]
    },
    {
      "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        },
        {
          "system" : "email",
          "value" : "monserviceclient.annuaire@esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "Codes to specify relationship between action in a RequestGroup that are not in the valueSet http://hl7.org/fhir/ValueSet/action-relationship-type.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "content" : "complete",
  "count" : 1,
  "concept" : [
    {
      "code" : "ALT",
      "display" : "Si l'action ne peut pas être réalisée, l'action reliée peut être réalisée à la place."
    }
  ]
}

```
