# value set Interop'Santé - Types de rôle d’une UF par rapport à un séjour patient dans une prescription - Guide d'implémentation de la ePrescription v1.1.0-ballot

## ValueSet: value set Interop'Santé - Types de rôle d’une UF par rapport à un séjour patient dans une prescription 

 
Le jeu de valeurs à utiliser dans l'extension pour indiquer le type d'UF référencée dans Medication.supportingInfo 

 **References** 

* [UF Role](StructureDefinition-fr-uf-role.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-uf-role-code-for-prescription",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/ValueSet/fr-uf-role-code-for-prescription",
  "version" : "1.1.0-ballot",
  "name" : "FrUfRoleCodesForPrescriptionValueSet",
  "title" : "value set Interop'Santé - Types de rôle d’une UF par rapport à un séjour patient dans une prescription",
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
  "description" : "Le jeu de valeurs à utiliser dans l'extension pour indiquer le type d'UF référencée dans Medication.supportingInfo",
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
      "system" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/CodeSystem/fr-uf-role-codes"
    }]
  }
}

```
