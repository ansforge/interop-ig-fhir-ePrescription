# value set Interop'Santé - Codes identifiant les substances - Guide d'implémentation de la ePrescription v1.1.0-ballot

## ValueSet: value set Interop'Santé - Codes identifiant les substances 

 
Le jeu de valeurs à utiliser pour indiquer un ingrédient composant un médicament dans Medication.ingredient.itemCodeableConcept.coding.code 

 **References** 

* [FR Medicinal Product Substance](StructureDefinition-fr-mp-substance.md)

### Définition logique (CLD)

 

### 

No Expansion for this valueset (Unknown Code System)

-------

 . 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-substance-code",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/ValueSet/fr-substance-code",
  "version" : "1.1.0-ballot",
  "name" : "FrSubstanceCode",
  "title" : "value set Interop'Santé - Codes identifiant les substances",
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
  "description" : "Le jeu de valeurs à utiliser pour indiquer un ingrédient composant un médicament dans Medication.ingredient.itemCodeableConcept.coding.code",
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
      "system" : "http://data.esante.gouv.fr/ansm/medicament/codeSMS"
    },
    {
      "system" : "http://data.esante.gouv.fr/ansm/medicament/substance"
    }]
  }
}

```
