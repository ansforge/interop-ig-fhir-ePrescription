# FR Observation For Prescription - Guide d'implémentation de la ePrescription v1.1.0-ballot

## Profil de ressource: FR Observation For Prescription 

 
French observation profile for prescription purposes. Observation provided as context of the prescription (ex. weight, height…) 
Profil français de modélisation de la ressource Observation pour les besoins de la prescription. Observation fournissant un contexte à la prescription (ex. poids, taille…). 

**Utilisations:**

* Ce Profil n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.eprescription|current/StructureDefinition/fr-observation-for-prescription)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Observation](http://hl7.org/fhir/R4/observation.html) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Observation](http://hl7.org/fhir/R4/observation.html) 

** Résumé **

Obligatoire : 1 élément

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Patient Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient)](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-patient.html)

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [Observation](http://hl7.org/fhir/R4/observation.html) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Observation](http://hl7.org/fhir/R4/observation.html) 

** Résumé **

Obligatoire : 1 élément

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Core Patient Profile (https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient)](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-patient.html)

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-observation-for-prescription.csv), [Excel](../StructureDefinition-fr-observation-for-prescription.xlsx), [Schematron](../StructureDefinition-fr-observation-for-prescription.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-observation-for-prescription",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/StructureDefinition/fr-observation-for-prescription",
  "version" : "1.1.0-ballot",
  "name" : "FRObservationForPrescription",
  "title" : "FR Observation For Prescription",
  "status" : "draft",
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
  "description" : "French observation profile for prescription purposes. Observation provided as context of the prescription (ex. weight, height...)\r\n\nProfil français de modélisation de la ressource Observation pour les besoins de la prescription. Observation fournissant un contexte à la prescription (ex. poids, taille...).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient"]
      }]
    }]
  }
}

```
