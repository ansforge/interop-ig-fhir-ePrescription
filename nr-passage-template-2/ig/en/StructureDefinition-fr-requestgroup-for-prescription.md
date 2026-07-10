# FR RequestGroup For Prescription - Guide d'implémentation de la ePrescription v1.1.0-ballot

## Resource Profile: FR RequestGroup For Prescription 

 
RequestGroup for expressing links between lines of a prescription 
Profil de la ressource RequestGroup pour exprimer les liens entre les lignes d'une prescription. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.eprescription|current/StructureDefinition/StructureDefinition-fr-requestgroup-for-prescription.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-requestgroup-for-prescription.csv), [Excel](../StructureDefinition-fr-requestgroup-for-prescription.xlsx), [Schematron](../StructureDefinition-fr-requestgroup-for-prescription.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-requestgroup-for-prescription",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/StructureDefinition/fr-requestgroup-for-prescription",
  "version" : "1.1.0-ballot",
  "name" : "FRRequestGroupForPrescription",
  "title" : "FR RequestGroup For Prescription",
  "status" : "draft",
  "experimental" : false,
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
  "description" : "RequestGroup for expressing links between lines of a prescription\r\n\nProfil de la ressource RequestGroup pour exprimer les liens entre les lignes d'une prescription.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "RequestGroup",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/RequestGroup",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "RequestGroup",
      "path" : "RequestGroup"
    },
    {
      "id" : "RequestGroup.groupIdentifier",
      "path" : "RequestGroup.groupIdentifier",
      "min" : 1
    },
    {
      "id" : "RequestGroup.action.relatedAction.extension",
      "path" : "RequestGroup.action.relatedAction.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "RequestGroup.action.relatedAction.extension:additionalRelationship",
      "path" : "RequestGroup.action.relatedAction.extension",
      "sliceName" : "additionalRelationship",
      "short" : "Additional relatedAction relationship",
      "definition" : "If the extension is used, RequestGroup.action.relatedAction.relationship shall be concurrent",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/eprescription/StructureDefinition/fr-additional-action-relationship"]
      }]
    }]
  }
}

```
