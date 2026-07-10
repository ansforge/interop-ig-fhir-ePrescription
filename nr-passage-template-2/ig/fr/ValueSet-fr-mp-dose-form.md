# French Medicinal product Dose form - Guide d'implémentation de la ePrescription v1.1.0-ballot

## ValueSet: French Medicinal product Dose form 

 
Le jeu de valeurs à utiliser pour coder l'élément **doseForm** des ressources **FrMedication**. 

 **References** 

* [FR Medication Compound](StructureDefinition-fr-medication-compound.md)
* [FR Medication Non Compound](StructureDefinition-fr-medication-noncompound.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-mp-dose-form",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/ValueSet/fr-mp-dose-form",
  "version" : "1.1.0-ballot",
  "name" : "FrMpDoseForm",
  "title" : "French Medicinal product Dose form",
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
  "description" : "Le jeu de valeurs à utiliser pour coder l'élément *doseForm* des ressources *FrMedication*.",
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
      "system" : "http://standardterms.edqm.eu"
    }]
  }
}

```
