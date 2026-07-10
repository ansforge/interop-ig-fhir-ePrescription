# UF Role - Guide d'implémentation de la ePrescription v1.1.0-ballot

## Extension: UF Role 

Caracterization of the role of a functionnal unit for the patient encounter

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)
* Examples for this Extension: [Bundle/TradPN13FHIR-MultiLine-Presc-Alt-METFORMINE-GLICLAZIDE](Bundle-TradPN13FHIR-MultiLine-Presc-Alt-METFORMINE-GLICLAZIDE.md), [Bundle/TradPN13FHIR-Presc-DOLIPRANE-Interpret](Bundle-TradPN13FHIR-Presc-DOLIPRANE-Interpret.md), [Bundle/TradPN13FHIR-Presc-DOLIPRANE](Bundle-TradPN13FHIR-Presc-DOLIPRANE.md), [Bundle/TradPN13FHIR-Presc-Morphine-PCA](Bundle-TradPN13FHIR-Presc-Morphine-PCA.md)... Show 2 more, [Bundle/TradPN13FHIR-Presc-Paracetamol-SiDouleur](Bundle-TradPN13FHIR-Presc-Paracetamol-SiDouleur.md) and [Bundle/TradPN13FHIR-Presc-Paracetamol](Bundle-TradPN13FHIR-Presc-Paracetamol.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.eprescription|current/StructureDefinition/StructureDefinition-fr-uf-role.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-uf-role.csv), [Excel](../StructureDefinition-fr-uf-role.xlsx), [Schematron](../StructureDefinition-fr-uf-role.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-uf-role",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/StructureDefinition/fr-uf-role",
  "version" : "1.1.0-ballot",
  "name" : "FrUFRole",
  "title" : "UF Role",
  "status" : "draft",
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
  "description" : "Caracterization of the role of a functionnal unit for the patient encounter",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "MedicationRequest.supportingInformation"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "UF Role",
      "definition" : "Caracterization of the role of a functionnal unit for the patient encounter"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/StructureDefinition/fr-uf-role"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/ValueSet/fr-uf-role-code-for-prescription"
      }
    }]
  }
}

```
