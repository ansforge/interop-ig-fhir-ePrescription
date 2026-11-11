# La prescription au format document - Guide d'implémentation de la ePrescription v1.1.0-ballot

* [**Table of Contents**](toc.md)
* [**La prescription**](prescription-Intro.md)
* **La prescription au format document**

## La prescription au format document

### Modèle logique métier

Les modèles métier de la prescription au format document ne sont pas directement définis dans cet IG. Ils sont hérités du guide d’implémentation [FR Document Core (Modèle métier)](https://ansforge.github.io/interop-IG-metier-document-core/main/ig/fr/), qui fournit un socle de modèles logiques génériques, commun à l’ensemble des documents de santé.

Deux modèles logiques issus de Document Core sont ainsi réutilisés et adaptés aux besoins spécifiques de la prescription :

| | |
| :--- | :--- |
| [FR LM Prescription Item](https://ansforge.github.io/interop-IG-metier-document-core/main/ig/fr/StructureDefinition-FRLMPrescriptionItem.html) | Modèle métier représentant une ligne de prescription. |
| [FR LM Dosage Instructions](https://ansforge.github.io/interop-IG-metier-document-core/main/ig/fr/StructureDefinition-FRLMDosageInstructions.html) | Modèle métier décrivant la posologie associée à une ligne de prescription. |

