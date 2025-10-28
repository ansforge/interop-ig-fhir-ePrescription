# Conversion PN13 vers FHIR pour un médicament composé d'une prescription de médicaments - Guide d'implémentation de la ePrescription v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Conversion PN13 vers FHIR pour un médicament composé d'une prescription de médicaments**

## ConceptMap: Conversion PN13 vers FHIR pour un médicament composé d'une prescription de médicaments 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/eprescription/ConceptMap/PN13-FHIR-prescmed-medicationcomp-conceptmap | *Version*:0.1.0 |
| Draft as of 2025-10-28 | *Computable Name*:FrPN13FHIRMedicationPrescriptionMedicationCompConceptMap |

 
ConceptMap pour la conversion PN13 vers FHIR d’un médicament composé d’une prescritpion de médicament 

Mapping de https://interopsante.org/pn13/xsd vers [FR Medication Compound](StructureDefinition-fr-medication-compound.md)

**Groupe 1**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme
  * **Forme@Phastnomenclature**: 
  * : SIPh-CIO_Forme
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Medication.form.coding.system**: Medication.form.coding.code
  * : 
  * ?: 
  * ?: le code cible est à trouver dans le mapping Free Set CIO-DC FORME
* **Codes**de: 
  * **Forme@Phastnomenclature**: 
  * : {Absent}
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Medication.form.coding.system**: Medication.form.coding.code
  * : 
  * ?: 
  * ?: le code cible est à trouver dans le mapping Free Set CIO-DC FORME
* **Codes**de: 
  * **Forme@Phastnomenclature**: 
  * : EDQM
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Medication.form.coding.system**: Medication.form.coding.code
  * : 
  * ?: http://standardterms.edqm.eu
  * ?: 
* **Codes**de: 
  * **Forme@Phastnomenclature**: 
  * : SIPh-Forme
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Medication.form.coding.system**: Medication.form.coding.code
  * : 
  * ?: 
  * ?: Certains codes cibles peuvent être trouvés dans le mapping Free Set CIO-DC FORME. Dans le cas contraire, si la traduction en EDQM n'est pas possible, Medication.form.text peut être utilisé mais pourrait poser des problèmes d'interprétation



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "PN13-FHIR-prescmed-medicationcomp-conceptmap",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/ConceptMap/PN13-FHIR-prescmed-medicationcomp-conceptmap",
  "version" : "0.1.0",
  "name" : "FrPN13FHIRMedicationPrescriptionMedicationCompConceptMap",
  "title" : "Conversion PN13 vers FHIR pour un médicament composé d'une prescription de médicaments",
  "status" : "draft",
  "date" : "2025-10-28T16:07:48+00:00",
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
  "description" : "ConceptMap pour la conversion PN13 vers FHIR d'un médicament composé d'une prescritpion de médicament",
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
  "targetUri" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/StructureDefinition/fr-medication-compound",
  "group" : [
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme",
          "target" : [
            {
              "code" : "Medication.form.coding.code",
              "equivalence" : "equivalent",
              "comment" : "le code cible est à trouver dans le mapping Free Set CIO-DC FORME",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme@Phast-nomenclature",
                  "value" : "SIPh-CIO_Forme"
                }
              ]
            }
          ]
        },
        {
          "target" : [
            {
              "code" : "Medication.form.coding.code",
              "equivalence" : "equivalent",
              "comment" : "le code cible est à trouver dans le mapping Free Set CIO-DC FORME",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme@Phast-nomenclature",
                  "value" : "{Absent}"
                }
              ]
            }
          ]
        },
        {
          "target" : [
            {
              "code" : "Medication.form.coding.code",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme@Phast-nomenclature",
                  "value" : "EDQM"
                }
              ],
              "product" : [
                {
                  "property" : "Medication.form.coding.system",
                  "value" : "http://standardterms.edqm.eu"
                }
              ]
            }
          ]
        },
        {
          "target" : [
            {
              "code" : "Medication.form.coding.code",
              "equivalence" : "relatedto",
              "comment" : "Certains codes cibles peuvent être trouvés dans le mapping Free Set CIO-DC FORME. Dans le cas contraire, si la traduction en EDQM n'est pas possible, Medication.form.text peut être utilisé mais pourrait poser des problèmes d'interprétation",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme@Phast-nomenclature",
                  "value" : "SIPh-Forme"
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}

```
