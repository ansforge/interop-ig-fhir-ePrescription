# FR On Admission Medication Composition - Guide d'implémentation de la ePrescription v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR On Admission Medication Composition**

## Resource Profile: FR On Admission Medication Composition 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/eprescription/StructureDefinition/fr-on-admission-medication-composition | *Version*:0.1.0 |
| Draft as of 2025-10-28 | *Computable Name*:FROnAdmissionMedicationComposition |

 
Profil de la ressource**Composition**du traitement médicamenteux prescrit à l’admission. 

**Usages:**

* Refer to this Profile: [FR On Admission Retroactive Reconciliation Composition](StructureDefinition-fr-on-admission-retroactive-reconciliation-composition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.eprescription|current/StructureDefinition/fr-on-admission-medication-composition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-on-admission-medication-composition.csv), [Excel](StructureDefinition-fr-on-admission-medication-composition.xlsx), [Schematron](StructureDefinition-fr-on-admission-medication-composition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-on-admission-medication-composition",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/StructureDefinition/fr-on-admission-medication-composition",
  "version" : "0.1.0",
  "name" : "FROnAdmissionMedicationComposition",
  "title" : "FR On Admission Medication Composition",
  "status" : "draft",
  "date" : "2025-10-28T16:58:49+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [
    {
      "name" : "Interop'Santé",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://interopsante.org/"
        }
      ]
    },
    {
      "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        },
        {
          "system" : "email",
          "value" : "monserviceclient.annuaire@esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "Profil de la ressource *Composition* du traitement médicamenteux prescrit à l'admission.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "fhirdocumentreference",
      "uri" : "http://hl7.org/fhir/documentreference",
      "name" : "FHIR DocumentReference"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/StructureDefinition/fr-current-medication-composition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Composition",
        "path" : "Composition",
        "short" : "Ordonnace médicale d'admission (OMA)",
        "definition" : "Traitements Médicamenteux prescrits à l'admission (Ordonnance Médicale d'Admission - OMA)."
      },
      {
        "id" : "Composition.type",
        "path" : "Composition.type",
        "definition" : "Le contexte de la liste des Traitements Médicamenteux Courants : à l'admission (OMA - Ordonnance médicale d'Admission)",
        "comment" : "Le type de liste des Traitements Médicamenteux Courants est fixé à la valeur signifiant Ordonnance Médicale d'Admission (OMA)",
        "requirements" : "Fixer le contexte de réalisation de la liste des Traitements Médicamenteux Courants : l'Ordonnance Médicale d'Admission (OMA)",
        "fixedCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://hl7.fr/fhir/fr/medication/CodeSystem/fr-document-type",
              "code" : "10000009",
              "display" : "OMA"
            }
          ]
        }
      }
    ]
  }
}

```
