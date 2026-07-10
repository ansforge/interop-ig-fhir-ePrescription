# value set Interop'Santé - Codes identifiant les médicaments - Guide d'implémentation de la ePrescription v1.1.0-ballot

## ValueSet: value set Interop'Santé - Codes identifiant les médicaments 

 
Le jeu de valeurs à utiliser pour indiquer le médicament dans Medication.code.coding.code 

 **References** 

* [FR Medication Non Compound](StructureDefinition-fr-medication-noncompound.md)
* [FR Medication Request](StructureDefinition-fr-medicationrequest.md)

### Définition logique (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-medication-code",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/ValueSet/fr-medication-code",
  "version" : "1.1.0-ballot",
  "name" : "FRMedicationCodes",
  "title" : "value set Interop'Santé - Codes identifiant les médicaments",
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
  "description" : "Le jeu de valeurs à utiliser pour indiquer le médicament dans Medication.code.coding.code",
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
      "system" : "http://data.esante.gouv.fr/ansm/medicament/UCD"
    },
    {
      "system" : "http://data.esante.gouv.fr/ansm/medicament/codeSMS"
    },
    {
      "system" : "http://data.esante.gouv.fr/ansm/medicament/substance"
    },
    {
      "system" : "http://data.esante.gouv.fr/ansm/medicament/Presentation"
    },
    {
      "system" : "http://data.esante.gouv.fr/ansm/medicament/SpecialitePharmaceutique"
    }]
  }
}

```
