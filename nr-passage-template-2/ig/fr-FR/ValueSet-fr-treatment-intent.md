# French overall intention of the treatment - Guide d'implémentation de la ePrescription v1.1.0-ballot

## ValueSet: French overall intention of the treatment 

 
Le jeu de valeurs à utiliser pour coder l'élément **treatmentIntent** de la ressource **FRInpatientMedicationRequest**. 

 **References** 

* [MedicationRequest overall treatment intent](StructureDefinition-fr-treatment-intent.md)

### Définition logique (CLD)

 

### 

-------

 . 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-treatment-intent",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/ValueSet/fr-treatment-intent",
  "version" : "1.1.0-ballot",
  "name" : "FrTreatmentIntent",
  "title" : "French overall intention of the treatment",
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
  "description" : "Le jeu de valeurs à utiliser pour coder l'élément *treatmentIntent* de la ressource *FRInpatientMedicationRequest*.",
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
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "constraint",
        "op" : "=",
        "value" : "< 363675004 |Intents (nature of procedure values) (qualifier value)|"
      }]
    }]
  }
}

```
