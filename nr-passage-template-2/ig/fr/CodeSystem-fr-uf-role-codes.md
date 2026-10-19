# code system Interop'Santé - Codes pour typer le rôle des UF par rapport à un séjour patient - Guide d'implémentation de la ePrescription v1.1.0-ballot

## CodeSystem: code system Interop'Santé - Codes pour typer le rôle des UF par rapport à un séjour patient 

 
Le système de codage pour les types de rôle qu'une UF peut avoir par rapport à un séjour patient. 

Ce système de codes est référencé dans la définition des ensembles de valeurs suivants :

* [FrUfRoleCodesForPrescriptionValueSet](ValueSet-fr-uf-role-code-for-prescription.md)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "date" : "2026-07-10T14:57:52+00:00",
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
