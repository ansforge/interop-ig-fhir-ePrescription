# FR RequestGroup For Prescription - Guide d'implémentation de la ePrescription v1.1.0-ballot

## : FR RequestGroup For Prescription 

 
RequestGroup for expressing links between lines of a prescription 
Profil de la ressource RequestGroup pour exprimer les liens entre les lignes d'une prescription. 

**Utilisations:**

* Ce Profil n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.eprescription|current/StructureDefinition/fr-requestgroup-for-prescription)

### 

 . 

*   
*   
*   
*   

#### Bindings terminologiques

#### Contraintes

** Résumé **

Obligatoire : 1 élément

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/eprescription/StructureDefinition/fr-additional-action-relationship](StructureDefinition-fr-additional-action-relationship.md)

 **View** 

#### Bindings terminologiques

#### Contraintes

** Résumé **

Obligatoire : 1 élément

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/eprescription/StructureDefinition/fr-additional-action-relationship](StructureDefinition-fr-additional-action-relationship.md)

 

 ,  



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
