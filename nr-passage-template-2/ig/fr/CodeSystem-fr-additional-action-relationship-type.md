# Interop'Santé code system - Additional codes for relationship between action - Guide d'implémentation de la ePrescription v1.1.0-ballot

## CodeSystem: Interop'Santé code system - Additional codes for relationship between action 

 
Codes to specify relationship between action in a RequestGroup that are not in the valueSet http://hl7.org/fhir/ValueSet/action-relationship-type. 

Ce système de codes est référencé dans la définition des ensembles de valeurs suivants :

* [FrAdditionalRequestGroupRelationshipValueSet](ValueSet-fr-additional-action-relationship-type-value-set.md)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-additional-action-relationship-type",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/CodeSystem/fr-additional-action-relationship-type",
  "version" : "1.1.0-ballot",
  "name" : "FrAdditionalActionRelationshipType",
  "title" : "Interop'Santé code system - Additional codes for relationship between action",
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
  "description" : "Codes to specify relationship between action in a RequestGroup that are not in the valueSet http://hl7.org/fhir/ValueSet/action-relationship-type.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "ALT",
    "display" : "Si l'action ne peut pas être réalisée, l'action reliée peut être réalisée à la place."
  }]
}

```
