# Conversion PN13 vers FHIR pour un séjour d'une prescription de médicaments - Guide d'implémentation de la ePrescription v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Conversion PN13 vers FHIR pour un séjour d'une prescription de médicaments**

## ConceptMap: Conversion PN13 vers FHIR pour un séjour d'une prescription de médicaments 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/eprescription/ConceptMap/PN13-FHIR-prescmed-encounter-conceptmap | *Version*:0.1.0 |
| Draft as of 2025-10-28 | *Computable Name*:FrPN13FHIRMedicationPrescriptionEncounterConceptMap |

 
ConceptMap pour la conversion PN13 vers FHIR d’un séjour d’une prescritpion de médicament 

Mapping de https://interopsante.org/pn13/xsd vers [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

**Groupe 1**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Code source**: Messages/M_prescription_médicaments/Séjour/Id_séjour
  * **relation**: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Code cible**: MedicationRequest.encounter.identifier.value
  * **Commentaire**: 
* **Code source**: Messages/M_prescription_médicaments/Séjour/DI_séjour
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Code cible**: MedicationRequest.encounter.identifier.system
  * **Commentaire**: Le domaine d'identification PN13 doit être exprimé sous le format uri pour alimenter patient.identifer.system. Par exemple, les domaines d'identification sous forme d'OID doivent être préfixés par urn:oid:



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "PN13-FHIR-prescmed-encounter-conceptmap",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/ConceptMap/PN13-FHIR-prescmed-encounter-conceptmap",
  "version" : "0.1.0",
  "name" : "FrPN13FHIRMedicationPrescriptionEncounterConceptMap",
  "title" : "Conversion PN13 vers FHIR pour un séjour d'une prescription de médicaments",
  "status" : "draft",
  "date" : "2025-10-28T16:42:48+00:00",
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
  "description" : "ConceptMap pour la conversion PN13 vers FHIR d'un séjour d'une prescritpion de médicament",
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
  "sourceUri" : "https://interopsante.org/pn13/xsd",
  "targetUri" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/StructureDefinition/fr-inpatient-medicationrequest",
  "group" : [
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Séjour/Id_séjour",
          "target" : [
            {
              "code" : "MedicationRequest.encounter.identifier.value",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Séjour/DI_séjour",
          "target" : [
            {
              "code" : "MedicationRequest.encounter.identifier.system",
              "equivalence" : "equivalent",
              "comment" : "Le domaine d'identification PN13 doit être exprimé sous le format uri pour alimenter patient.identifer.system. Par exemple, les domaines d'identification sous forme d'OID doivent être préfixés par urn:oid:"
            }
          ]
        }
      ]
    }
  ]
}

```
