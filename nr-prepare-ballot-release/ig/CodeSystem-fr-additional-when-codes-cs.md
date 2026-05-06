# code system Interop'Santé - Codes additionnels pour l'élément when - Guide d'implémentation de la ePrescription v1.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **code system Interop'Santé - Codes additionnels pour l'élément when**

## CodeSystem: code system Interop'Santé - Codes additionnels pour l'élément when 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/eprescription/CodeSystem/fr-additional-when-codes-cs | *Version*:1.1.0-ballot |
| Draft as of 2026-05-06 | *Computable Name*:FrAdditionalWhenCodesCodeSystem |

 
Le système de codage pour des périodes d’occurrence qui ne sont pas définies dans FHIR. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FrAdditionalWhenCodesValueSet](ValueSet-fr-additional-when-codes-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-additional-when-codes-cs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/CodeSystem/fr-additional-when-codes-cs",
  "version" : "1.1.0-ballot",
  "name" : "FrAdditionalWhenCodesCodeSystem",
  "title" : "code system Interop'Santé - Codes additionnels pour l'élément when",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-05-06T13:29:35+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [{
    "name" : "Interop'Santé",
    "telecom" : [{
      "system" : "url",
      "value" : "http://interopsante.org/"
    }]
  },
  {
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    },
    {
      "system" : "email",
      "value" : "monserviceclient.annuaire@esante.gouv.fr"
    }]
  }],
  "description" : "Le système de codage pour des périodes d'occurrence qui ne sont pas définies dans FHIR.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "content" : "complete",
  "count" : 16,
  "concept" : [{
    "code" : "AGU",
    "display" : "L'événement se produit avant [offset] le levé / event occurs [offset] before getting up"
  },
  {
    "code" : "PGU",
    "display" : "L'événement se produit après [offset] le levé / event occurs [offset] after getting up"
  },
  {
    "code" : "AT",
    "display" : "L'événement se produit avant [offset] la toilette / event occurs [offset] before toilette (self grooming/washing)"
  },
  {
    "code" : "T",
    "display" : "L'événement se produit lors de la toilette / event occurs during toilette (self grooming/washing)"
  },
  {
    "code" : "PT",
    "display" : "L'événement se produit après [offset] la toilette / event occurs [offset] after toilette (self grooming/washing)"
  },
  {
    "code" : "ASK",
    "display" : "L'événement se produit avant [offset] la collation / event occurs [offset] before snack"
  },
  {
    "code" : "SK",
    "display" : "L'événement se produit lors de la collation / event occurs during snack"
  },
  {
    "code" : "PSK",
    "display" : "L'événement se produit après [offset] la collation / event occurs [offset] after snack"
  },
  {
    "code" : "AMS",
    "display" : "L'événement se produit avant [offset] la collation du matin / event occurs [offset] before morning snack"
  },
  {
    "code" : "MS",
    "display" : "L'événement se produit lors de la collation du matin / event occurs during morning snack"
  },
  {
    "code" : "PMS",
    "display" : "L'événement se produit après [offset] la collation du matin / event occurs [offset] after morning snack"
  },
  {
    "code" : "AAS",
    "display" : "L'événement se produit avant [offset] la collation de l'après-midi / event occurs [offset] before afternoon snack"
  },
  {
    "code" : "AS",
    "display" : "L'événement se produit lors de la collation de l'après-midi / event occurs during afternoon snack"
  },
  {
    "code" : "PAS",
    "display" : "L'événement se produit après [offset] la collation de l'après-midi / event occurs [offset] after afternoon snack"
  },
  {
    "code" : "ABT",
    "display" : "L'événement se produit avant [offset] le coucher / event occurs [offset] before going to bed (bedtime)"
  },
  {
    "code" : "PBT",
    "display" : "L'événement se produit après [offset] le coucher / event occurs [offset] after going to bed (bedtime)"
  }]
}

```
