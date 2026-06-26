# Conversion PN13 vers FHIR pour le patient d'une prescription de médicaments avec uniquement un identifiant fourni - Guide d'implémentation de la ePrescription v1.1.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Conversion PN13 vers FHIR pour le patient d'une prescription de médicaments avec uniquement un identifiant fourni**

## ConceptMap: Conversion PN13 vers FHIR pour le patient d'une prescription de médicaments avec uniquement un identifiant fourni 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/eprescription/ConceptMap/PN13-FHIR-prescmed-patient-id-seul-conceptmap | *Version*:1.1.0-ballot |
| Draft as of 2026-06-26 | *Computable Name*:FrPN13FHIRMedicationPrescriptionPatientIdSeulConceptMap |

 
ConceptMap pour la conversion PN13 vers FHIR du patient d’une prescritpion de médicament avec uniquement un identifiant fourni 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "PN13-FHIR-prescmed-patient-id-seul-conceptmap",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/ConceptMap/PN13-FHIR-prescmed-patient-id-seul-conceptmap",
  "version" : "1.1.0-ballot",
  "name" : "FrPN13FHIRMedicationPrescriptionPatientIdSeulConceptMap",
  "title" : "Conversion PN13 vers FHIR pour le patient d'une prescription de médicaments avec uniquement un identifiant fourni",
  "status" : "draft",
  "date" : "2026-06-26T10:32:55+00:00",
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
  "description" : "ConceptMap pour la conversion PN13 vers FHIR du patient d'une prescritpion de médicament avec uniquement un identifiant fourni",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "sourceUri" : "https://interopsante.org/pn13/xsd",
  "targetUri" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/StructureDefinition/fr-inpatient-medicationrequest",
  "group" : [{
    "element" : [{
      "code" : "Messages/M_prescription_médicaments/Patient/IPP",
      "target" : [{
        "code" : "MedicationRequest.subject.identifier.value",
        "equivalence" : "equal",
        "product" : [{
          "property" : "MedicationRequest.subject.identifier.use",
          "value" : "usual"
        },
        {
          "property" : "MedicationRequest.subject.type",
          "value" : "Patient"
        }]
      }]
    }]
  }]
}

```
