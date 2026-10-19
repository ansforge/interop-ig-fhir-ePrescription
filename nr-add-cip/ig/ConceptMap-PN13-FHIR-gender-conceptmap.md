# Conversion PN13 FHIR des code de sexe administratif - Guide d'implémentation de la ePrescription v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Conversion PN13 FHIR des code de sexe administratif**

## ConceptMap: Conversion PN13 FHIR des code de sexe administratif 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/eprescription/ConceptMap/PN13-FHIR-gender-conceptmap | *Version*:0.1.0 |
| Draft as of 2026-02-23 | *Computable Name*:FrPN13FHIRGenderConceptMap |

 
ConceptMap pour la conversion des codes de sexe administratif entre PN13 et FHIR 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "PN13-FHIR-gender-conceptmap",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/ConceptMap/PN13-FHIR-gender-conceptmap",
  "version" : "0.1.0",
  "name" : "FrPN13FHIRGenderConceptMap",
  "title" : "Conversion PN13 FHIR des code de sexe administratif",
  "status" : "draft",
  "date" : "2026-02-23T08:39:26+00:00",
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
  "description" : "ConceptMap pour la conversion des codes de sexe administratif entre PN13 et FHIR",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "FRANCE"
    }]
  }],
  "sourceUri" : "https://interopsante.org/pn13/SIPh_sexe",
  "targetUri" : "http://hl7.org/fhir/administrative-gender",
  "group" : [{
    "element" : [{
      "code" : "M",
      "display" : "Mâle",
      "target" : [{
        "code" : "male",
        "display" : "Male",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "F",
      "display" : "Femelle",
      "target" : [{
        "code" : "female",
        "display" : "Female",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "U",
      "display" : "Non connu",
      "target" : [{
        "code" : "unknown",
        "display" : "Unknown",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "O",
      "display" : "Autre",
      "target" : [{
        "code" : "unknown",
        "display" : "Unknown",
        "equivalence" : "inexact",
        "comment" : "La terminologie FHIR pour le sexe administratif n'a pas d'équivalent pour le concept autre. Le mapping sur unknown est proposé pour permettre un passage de PN13 à FHIR"
      }]
    }]
  }]
}

```
