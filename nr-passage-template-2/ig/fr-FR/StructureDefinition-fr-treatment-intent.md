# MedicationRequest overall treatment intent - Guide d'implémentation de la ePrescription v1.1.0-ballot

## : MedicationRequest overall treatment intent 

The overall intention of the treatment

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [FR Medication Request](StructureDefinition-fr-medicationrequest.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.eprescription|current/StructureDefinition/fr-treatment-intent)

### 

 . 

*   
*   
*   
*   

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

** Résumé **

Extension simple avec le type CodeableConcept : The overall intention of the treatment

 **Differential View** 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

** Résumé **

Extension simple avec le type CodeableConcept : The overall intention of the treatment

 

 , ,  



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-treatment-intent",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/StructureDefinition/fr-treatment-intent",
  "version" : "1.1.0-ballot",
  "name" : "FrTeatmentIntent",
  "title" : "MedicationRequest overall treatment intent",
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
  "description" : "The overall intention of the treatment",
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
    "expression" : "MedicationRequest"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MedicationRequest overall treatment intent",
      "definition" : "The overall intention of the treatment"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/StructureDefinition/fr-treatment-intent"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "label" : "TreatmentIntent",
      "short" : "Value of overall treatment intent",
      "definition" : "overall intention of treatment Coding. SNOMED CT code minimal value set for overall intention of treatment (extensible)",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "description" : "SNOMED CT encoded treatment overall intent",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/ValueSet/fr-treatment-intent"
      }
    }]
  }
}

```
