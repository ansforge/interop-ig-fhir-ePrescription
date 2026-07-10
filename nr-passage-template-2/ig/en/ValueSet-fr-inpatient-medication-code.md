# value set Interop'Santé - Codes identifiant les médicaments destinés à être prescrits en milieu hospitalier - Guide d'implémentation de la ePrescription v1.1.0-ballot

## ValueSet: value set Interop'Santé - Codes identifiant les médicaments destinés à être prescrits en milieu hospitalier 

 
Le jeu de valeurs à utiliser pour indiquer le médicament dans Medication.code.coding.code 

 **References** 

* [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-inpatient-medication-code",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/ValueSet/fr-inpatient-medication-code",
  "version" : "1.1.0-ballot",
  "name" : "FRInpatientMedicationCodes",
  "title" : "value set Interop'Santé - Codes identifiant les médicaments destinés à être prescrits en milieu hospitalier",
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
    }]
  }
}

```
