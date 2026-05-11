# code system Interop'Santé - Codes pour typer le rôle des UF par rapport à un séjour patient - Guide d'implémentation de la ePrescription v1.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **code system Interop'Santé - Codes pour typer le rôle des UF par rapport à un séjour patient**

## CodeSystem: code system Interop'Santé - Codes pour typer le rôle des UF par rapport à un séjour patient 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/eprescription/CodeSystem/fr-uf-role-codes | *Version*:1.1.0-ballot |
| Draft as of 2026-05-11 | *Computable Name*:FrUFRoleCodes |

 
Le système de codage pour les types de rôle qu’une UF peut avoir par rapport à un séjour patient. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FrUfRoleCodesForPrescriptionValueSet](ValueSet-fr-uf-role-code-for-prescription.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-uf-role-codes",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/CodeSystem/fr-uf-role-codes",
  "version" : "1.1.0-ballot",
  "name" : "FrUFRoleCodes",
  "title" : "code system Interop'Santé - Codes pour typer le rôle des UF par rapport à un séjour patient",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-05-11T06:11:37+00:00",
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
  "description" : "Le système de codage pour les types de rôle qu'une UF peut avoir par rapport à un séjour patient.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "UFSOIN",
    "display" : "UF de responsabilité des soins"
  },
  {
    "code" : "UFMED",
    "display" : "UF de responsabilité médicale"
  },
  {
    "code" : "UFHEB",
    "display" : "UF d'hébergement"
  }]
}

```
