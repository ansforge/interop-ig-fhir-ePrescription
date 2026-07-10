# FR Medicinal Product Substance - Guide d'implémentation de la ePrescription v1.1.0-ballot

## Profil du type de données: FR Medicinal Product Substance 

 
A FHIR CodeableConcept profile representing a coded medicinal product substance 
Profil FHIR CodeableConcept représentant une substance de produit médicamenteux codée selon le référentiel des substances médicamenteuses RIUM (Répertoire International des Substances Médicamenteuses de l'ANS). 

**Utilisations:**

* Utilise ce/t/te profil de type de données: [FR Medication Non Compound](StructureDefinition-fr-medication-noncompound.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.eprescription|current/StructureDefinition/fr-mp-substance)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [CodeableConcept](http://hl7.org/fhir/R4/datatypes.html#CodeableConcept) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [CodeableConcept](http://hl7.org/fhir/R4/datatypes.html#CodeableConcept) 

** Résumé **

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [CodeableConcept](http://hl7.org/fhir/R4/datatypes.html#CodeableConcept) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [CodeableConcept](http://hl7.org/fhir/R4/datatypes.html#CodeableConcept) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-mp-substance.csv), [Excel](../StructureDefinition-fr-mp-substance.xlsx), [Schematron](../StructureDefinition-fr-mp-substance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-mp-substance",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/StructureDefinition/fr-mp-substance",
  "version" : "1.1.0-ballot",
  "name" : "FRMPSubstance",
  "title" : "FR Medicinal Product Substance",
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
  "description" : "A FHIR CodeableConcept profile representing a coded medicinal product substance \r\n\nProfil FHIR CodeableConcept représentant une substance de produit médicamenteux codée selon le référentiel des substances médicamenteuses RIUM (Répertoire International des Substances Médicamenteuses de l'ANS).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "orim",
    "uri" : "http://hl7.org/orim",
    "name" : "Ontological RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "CodeableConcept",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CodeableConcept",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CodeableConcept",
      "path" : "CodeableConcept",
      "short" : "RIUM Medicinal Product Substance",
      "example" : [{
        "label" : "Glucose",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://data.esante.gouv.fr/ansm/medicament/codeSMS",
            "code" : "100000078171",
            "display" : "glucose"
          }],
          "text" : "glucose"
        }
      },
      {
        "label" : "Périndopril tert-butylamine",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://data.esante.gouv.fr/ansm/medicament/codeSMS",
            "code" : "100000091602",
            "display" : "périndopril tert-butylamine"
          }],
          "text" : "périndopril tert-butylamine"
        }
      }]
    },
    {
      "id" : "CodeableConcept.coding",
      "path" : "CodeableConcept.coding",
      "binding" : {
        "strength" : "required",
        "description" : "Medicinal product Substance",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/ValueSet/fr-substance-code"
      }
    }]
  }
}

```
