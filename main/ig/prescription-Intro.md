# La prescription - Guide d'implémentation de la ePrescription v1.1.0-ballot

* [**Table of Contents**](toc.md)
* **La prescription**

## La prescription

**📘 Introduction générale**– Cette page présente les concepts de base et oriente vers les sections métier ou techniques selon votre profil.

Une **prescription médicamenteuse** est un ensemble d’un ou plusieurs médicaments prescrits, chacun associé à sa posologie. Ce guide spécifie comment représenter ces prescriptions sous forme numérique interopérable en utilisant le standard FHIR.

### Périmètre couvert

Cette spécification couvre l’ensemble des prescriptions médicamenteuses dans l’écosystème français :

* **Prescriptions hospitalières** : pour usage intra-hospitalier
* **Prescriptions de médecine de ville** : pour délivrance en pharmacie d’officine
* **Prescriptions hospitalières exécutables en ville (PHEV)** : prescriptions réalisées à l’hôpital mais exécutées en ville

### Origine et alignements

Les spécifications sont issues des travaux du groupe de travail Interop’Santé et s’appuient sur :

* La version précédente de ce guide d’implémentation
* Les travaux de la HAS sur la [structuration de la posologie](https://www.has-sante.fr/jcms/p_3555137/fr/structuration-de-la-posologie-des-medicaments) pour les prescriptions de médecine de ville
* Les profils européens pour la [prescription](http://hl7.eu/fhir/mpd) (MPD - Medication Prescription and Dispense)

### Guide de lecture

**👤 Vous êtes professionnel de santé ou chef de projet métier ?**
* Consultez les **modèles logiques métier** ci-dessous pour comprendre les données d'une prescription
* Parcourez la page [Cas d'usage](prescription-CasUsage.md) pour découvrir les scénarios couverts
* Explorez les [exemples concrets](prescription-Exemples.md) basés sur les travaux de la HAS

**⚙️ Vous êtes développeur ou intégrateur ?**
* Consultez la [Vue d'ensemble technique](prescription-VueEnsemble.md) pour comprendre les ressources et profils FHIR impliqués et leurs relations
* Consultez les [Règles de modélisation](prescription-Modelisation.md) pour les règles d'implémentation détaillées (posologie, dates, perfusions, patchs...)
* Utilisez les [instances FHIR](prescription-Exemples.md) comme référence d'implémentation

### Exemple d’informations portées par une prescription

Exemple de modélisation d’une prescription

Note : cet exemple se concentre sur les données spécifiques à une ligne de prescription (un médicament prescrit associé à sa posologie). La modélisation des autres informations (ex. identité patient, identité prescripteur…) est traitée dans le guide d’intégration FRCore

### Exemple d’informations portées par une posologie

Exemple 1 de posologie annotée :

Exemple 2 de posologie annotée :

### Modélisation métier de la ligne de prescription et de la posologie

Pour faciliter la compréhension par les professionnels de santé, des **modèles métier** ont été élaborés pour décrire de manière exhaustive les données qui constituent une ligne de prescription et une posologie.

Ces modèles utilisent le formalisme des **“modèles logiques”** d’HL7, qui permettent de représenter les concepts métier de façon indépendante des contraintes techniques de FHIR. Contrairement aux profils FHIR techniques destinés aux développeurs, ces modèles logiques offrent une vision métier claire et accessible, facilitant le dialogue entre professionnels de santé, éditeurs de logiciels et experts FHIR.

**Avantages pour les professionnels de santé :**

* Vue d’ensemble complète des informations d’une prescription, sans jargon technique
* Langage commun entre les prescripteurs et les équipes informatiques
* Référentiel métier pour valider que tous les besoins sont bien couverts

**Modèles disponibles :**

* [Modélisation d’une ligne de prescription](StructureDefinition-fr-ligne-prescription.md)
* [Modélisation d’une posologie](StructureDefinition-fr-posologie.md)

### Sommaire de la partie prescription

* [Vue d’ensemble](prescription-VueEnsemble.md) : ressources et profils FHIR impliqués, leurs relations et le diagramme de dépendances
* [Cas d’usage](prescription-CasUsage.md) : scénarios de prescription couverts (médicaments simples/composés, spécialité/DC, posologies simples/complexes)
* [Règles de modélisation](prescription-Modelisation.md) : règles d’implémentation détaillées (parties textuelles, terminologies, dates et durée, perfusions, patchs, dose calculée, liens entre lignes)
* [Exemples](prescription-Exemples.md) : instances FHIR concrètes illustrant les différents cas d’usage, incluant les exemples de la HAS sur la structuration de la posologie

