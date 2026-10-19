# value set Interop'Santé - Codes pour le périmètre des notes - Guide d'implémentation de la ePrescription v1.1.0-ballot

## ValueSet: value set Interop'Santé - Codes pour le périmètre des notes 

 
Le jeu de valeurs à utiliser pour coder le périmètre des notes par exemple lors de la transformation de message PN13 en ressources FHIR 

 **References** 

* [Scope for note element in MedicationRequest](StructureDefinition-fr-medicationrequest-note-scope.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-note-scope-codes-vs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/ValueSet/fr-note-scope-codes-vs",
  "version" : "1.1.0-ballot",
  "name" : "FrNoteScopeCodeValueSet",
  "title" : "value set Interop'Santé - Codes pour le périmètre des notes",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-07-10T14:57:52+00:00",
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
  "description" : "Le jeu de valeurs à utiliser pour coder le périmètre des notes par exemple lors de la transformation de message PN13 en ressources FHIR",
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
      "system" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/CodeSystem/fr-note-scope-codes"
    }]
  }
}

```
