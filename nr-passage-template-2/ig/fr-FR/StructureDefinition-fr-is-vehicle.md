# Medication component which is the vehicle of the compound Medication - Guide d'implémentation de la ePrescription v1.1.0-ballot

## : Medication component which is the vehicle of the compound Medication 

Medication component which is the vehicle of the compound Medication

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [FR Medication Compound](StructureDefinition-fr-medication-compound.md)
* Exemples pour ce/t/te Extension: [Bundle/Presc-MiniperfCefotaxime-En20min-Pdt3j](Bundle-Presc-MiniperfCefotaxime-En20min-Pdt3j.md), [Bundle/Presc-PerfDobutamine-Qsp40mL](Bundle-Presc-PerfDobutamine-Qsp40mL.md), [Bundle/Presc-PerfGl-NaCl-KCl-500ml](Bundle-Presc-PerfGl-NaCl-KCl-500ml.md) and [Bundle/TradPN13FHIR-Presc-perfusion-6-composants](Bundle-TradPN13FHIR-Presc-perfusion-6-composants.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.eprescription|current/StructureDefinition/fr-is-vehicle)

### 

 . 

*   
*   
*   
*   

#### Contraintes

** Résumé **

Extension simple avec le type boolean : Medication component which is the vehicle of the compound Medication

 **Differential View** 

#### Contraintes

** Résumé **

Extension simple avec le type boolean : Medication component which is the vehicle of the compound Medication

 

 , ,  



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-is-vehicle",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/StructureDefinition/fr-is-vehicle",
  "version" : "1.1.0-ballot",
  "name" : "FrIsVehicle",
  "title" : "Medication component which is the vehicle of the compound Medication",
  "status" : "draft",
  "date" : "2026-07-10T14:48:11+00:00",
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
  "description" : "Medication component which is the vehicle of the compound Medication",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Medication.ingredient"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Medication component which is the vehicle of the compound Medication",
      "definition" : "Medication component which is the vehicle of the compound Medication"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/StructureDefinition/fr-is-vehicle"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
