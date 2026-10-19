# Ratio with UCUM or EDQM codes if code is used - Guide d'implémentation de la ePrescription v1.1.0-ballot

## Profil du type de données: Ratio with UCUM or EDQM codes if code is used 

 
Ratio with numerator and denominator unit UCUM or EDQM encoded if code is used 
Ratio avec des unités UCUM ou EDQM si un code est utilisé. 

**Utilisations:**

* Utilise ce/t/te profil de type de données: [FR Medication Non Compound](StructureDefinition-fr-medication-noncompound.md), [FR Medication](StructureDefinition-fr-medication.md) and [FR Medication Request](StructureDefinition-fr-medicationrequest.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.eprescription|current/StructureDefinition/FrRatioMedication)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Contraintes

Cette structure est dérivée de [Ratio](http://hl7.org/fhir/R4/datatypes.html#Ratio) 

#### Contraintes

Cette structure est dérivée de [Ratio](http://hl7.org/fhir/R4/datatypes.html#Ratio) 

** Résumé **

**Structures**

Cette structure fait référence à ces autres structures:

* [SimpleQuantity with UCUM or EDQM codes or code not used (https://interop.esante.gouv.fr/ig/fhir/eprescription/StructureDefinition/FrSimpleQuantityMedication)](StructureDefinition-FrSimpleQuantityMedication.md)

 **Vue des éléments clés** 

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [Ratio](http://hl7.org/fhir/R4/datatypes.html#Ratio) 

 **Vue d'ensembleView** 

#### Contraintes

Cette structure est dérivée de [Ratio](http://hl7.org/fhir/R4/datatypes.html#Ratio) 

** Résumé **

**Structures**

Cette structure fait référence à ces autres structures:

* [SimpleQuantity with UCUM or EDQM codes or code not used (https://interop.esante.gouv.fr/ig/fhir/eprescription/StructureDefinition/FrSimpleQuantityMedication)](StructureDefinition-FrSimpleQuantityMedication.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-FrRatioMedication.csv), [Excel](../StructureDefinition-FrRatioMedication.xlsx), [Schematron](../StructureDefinition-FrRatioMedication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrRatioMedication",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/StructureDefinition/FrRatioMedication",
  "version" : "1.1.0-ballot",
  "name" : "FrRatioMedication",
  "title" : "Ratio with UCUM or EDQM codes if code is used",
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
  "description" : "Ratio with numerator and denominator unit UCUM or EDQM encoded if code is used\r\n\nRatio avec des unités UCUM ou EDQM si un code est utilisé.",
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
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Ratio",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Ratio",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Ratio",
      "path" : "Ratio",
      "short" : "A ratio of two precise Quantity values - a numerator and a denominator",
      "definition" : "A relationship of two Quantity values - expressed as a precise numerator and a precise denominator."
    },
    {
      "id" : "Ratio.numerator",
      "path" : "Ratio.numerator",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/eprescription/StructureDefinition/FrSimpleQuantityMedication"]
      }]
    },
    {
      "id" : "Ratio.denominator",
      "path" : "Ratio.denominator",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/eprescription/StructureDefinition/FrSimpleQuantityMedication"]
      }]
    }]
  }
}

```
