# value set Interop'Santé - Codes additionnels pour l'élément when - Guide d'implémentation de la ePrescription v1.1.0-ballot

## ValueSet: value set Interop'Santé - Codes additionnels pour l'élément when 

 
Le jeu de valeurs à utiliser pour coder des périodes d'occurrence qui ne sont pas dans le jeu de valeurs http://hl7.org/fhir/ValueSet/event-timing. 

 **References** 

* [Additional values for when element](StructureDefinition-fr-additional-when-values.md)

### Définition logique (CLD)

 

### 

-------

 . 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-additional-when-codes-vs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/ValueSet/fr-additional-when-codes-vs",
  "version" : "1.1.0-ballot",
  "name" : "FrAdditionalWhenCodesValueSet",
  "title" : "value set Interop'Santé - Codes additionnels pour l'élément when",
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
  "description" : "Le jeu de valeurs à utiliser pour coder des périodes d'occurrence qui ne sont pas dans le jeu de valeurs http://hl7.org/fhir/ValueSet/event-timing.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "immutable" : false,
  "compose" : {
    "include" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/CodeSystem/fr-additional-when-codes-cs"
    }]
  }
}

```
