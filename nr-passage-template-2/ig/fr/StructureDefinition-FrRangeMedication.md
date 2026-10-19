# Range with UCUM or EDQM codes if code is used - Guide d'implémentation de la ePrescription v1.1.0-ballot

## Profil du type de données: Range with UCUM or EDQM codes if code is used 

 
Range with low and high unit UCUM or EDQM codes if code is used 
Plage avec des unités UCUM ou EDQM si un code est utilisé. 

**Utilisations:**

* Utilise ce/t/te profil de type de données: [FR Medication Request](StructureDefinition-fr-medicationrequest.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.eprescription|current/StructureDefinition/FrRangeMedication)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Contraintes

Cette structure est dérivée de [Range](http://hl7.org/fhir/R4/datatypes.html#Range) 

#### Contraintes

Cette structure est dérivée de [Range](http://hl7.org/fhir/R4/datatypes.html#Range) 

** Résumé **

**Structures**

Cette structure fait référence à ces autres structures:

* [SimpleQuantity with UCUM or EDQM codes or code not used (https://interop.esante.gouv.fr/ig/fhir/eprescription/StructureDefinition/FrSimpleQuantityMedication)](StructureDefinition-FrSimpleQuantityMedication.md)

 **Vue des éléments clés** 

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [Range](http://hl7.org/fhir/R4/datatypes.html#Range) 

 **Vue d'ensembleView** 

#### Contraintes

Cette structure est dérivée de [Range](http://hl7.org/fhir/R4/datatypes.html#Range) 

** Résumé **

**Structures**

Cette structure fait référence à ces autres structures:

* [SimpleQuantity with UCUM or EDQM codes or code not used (https://interop.esante.gouv.fr/ig/fhir/eprescription/StructureDefinition/FrSimpleQuantityMedication)](StructureDefinition-FrSimpleQuantityMedication.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-FrRangeMedication.csv), [Excel](../StructureDefinition-FrRangeMedication.xlsx), [Schematron](../StructureDefinition-FrRangeMedication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrRangeMedication",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/StructureDefinition/FrRangeMedication",
  "version" : "1.1.0-ballot",
  "name" : "FrRangeMedication",
  "title" : "Range with UCUM or EDQM codes if code is used",
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
  "description" : "Range with low and high unit UCUM or EDQM codes if code is used\r\n\nPlage avec des unités UCUM ou EDQM si un code est utilisé.",
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
  "type" : "Range",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Range",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Range",
      "path" : "Range",
      "short" : "Set of values bounded by precise low and high fixed quantity (no comparator)",
      "definition" : "A set of ordered Quantities defined by a precise low and high limit defined by a fixed quantity (no comparator)",
      "comment" : "The stated low and high value are assumed to have arbitrarily high precision when it comes to determining which values are in the range. I.e. 1.99 is not in the range 2 -> 3. Low and high limit are precisely defined, no element 'comparator' in the simpleQuantity defining each bound. The limits are defined by a fixed quantity (no comparator)."
    },
    {
      "id" : "Range.low",
      "path" : "Range.low",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/eprescription/StructureDefinition/FrSimpleQuantityMedication"]
      }]
    },
    {
      "id" : "Range.high",
      "path" : "Range.high",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/eprescription/StructureDefinition/FrSimpleQuantityMedication"]
      }]
    }]
  }
}

```
