# Guide d'implémentation FHIR de la ePrescription

## Présentation

Ce guide d'implémentation (IG) FHIR définit les spécifications d'interopérabilité pour la prescription électronique de médicaments en France. Il s'inscrit dans une démarche de convergence des différents standards et travaux nationaux et européens en matière de prescription médicamenteuse.

### Contexte et objectifs

Ce guide a pour vocation de :

- **Unifier l'interopérabilité** : Rassembler les différents formats et standards de prescription (PN-13, CDA ePrescription) dans une approche FHIR moderne
- **Convergence documentaire et API** : Supporter à la fois les échanges au format document FHIR et les échanges via API REST
- **Alignement européen** : Être conforme aux spécifications européennes (eHN, Xt-EHR 6.2) et aux travaux HL7/IHE MPD (Medication Prescription Dispense)
- **Alignement national** : Intégrer les travaux métier de structuration de la posologie de la HAS et respecter les standards de l'Espace Européen des Données de Santé (EEDS)

### Statut actuel

Ce guide est en cours de développement actif et se concentre exclusivement sur le domaine de la **Prescription** électronique de médicaments.

## Standards et formats supportés

Ce guide intègre et fait converger plusieurs standards :

- **PN-13** : Standard de message historique français pour les flux intra-hospitaliers
- **CDA ePrescription** : Format de document médical structuré
- **FHIR R4** : Standard moderne d'interopérabilité des données de santé
- **HL7/IHE MPD** : Profils européens de prescription et dispensation

La sémantique de ce guide s'appuie sur le **[RUIM (Référentiel Unique d'Interopérabilité du Médicament)](https://smt.esante.gouv.fr/fiche-ruim/)**, travaux complémentaires qui définissent les règles sémantiques pour l'interopérabilité du circuit du médicament en France.

## Structure du guide

Le guide d'implémentation est organisé en plusieurs sections :

- **Prescription** : Profils, cas d'usage et exemples pour la prescription électronique
- **Prescription au format document** : Spécifications pour l'échange de prescriptions sous forme de documents FHIR (en construction)
- **Transformation PN13-FHIR** : Guides de transformation bidirectionnelle entre PN-13 et FHIR
- **Exemples PN13** : Fichiers d'exemple illustrant différents types de prescriptions

## Accès au guide d'implémentation

### Version d'intégration continue (CI)

La version d'intégration continue est générée automatiquement à chaque modification sur GitHub. Elle permet de visualiser les changements avant publication officielle.

**Cette version n'est pas destinée à l'implémentation en production.**

- Branche principale (main) : https://ansforge.github.io/interop-ig-fhir-ePrescription/main/ig
- Autres branches : https://ansforge.github.io/interop-ig-fhir-ePrescription/[nom-branche]/ig

### Version publiée (production)

La version publiée est celle à utiliser pour les développements et implémentations en production.

**Note** : Le guide n'étant pas encore officiellement publié, ce lien sera activé lors de la première publication stable.

URL future : https://interop.esante.gouv.fr/ig/fhir/eprescription

## Dépendances

Ce guide d'implémentation s'appuie sur :

- **HL7 FHIR R4** (4.0.1)
- **French Core IG** (hl7.fhir.fr.core v2.1.0) : Profils FHIR de base pour la France
- **FHIR R5 Extensions** (4.0.1) : Extensions backportées de FHIR R5

## Contribution

Les contributions sont les bienvenues. Ce projet est le fruit d'une collaboration entre :

- **Interop'Santé** : Animation des groupes de travail et coordination technique
- **ANS (Agence du Numérique en Santé)** : Validation et publication des standards nationaux
- **HAS (Haute Autorité de Santé)** : Référentiel métier pour la structuration de la posologie
- **Communauté HL7 France** : Expertise FHIR et validation des profils

Pour contribuer :
1. Créer une issue pour discuter des changements proposés
2. Forker le repository
3. Créer une branche pour vos modifications
4. Soumettre une pull request avec une description détaillée

## Ressources complémentaires

- [Documentation des IGs ANS](https://interop.esante.gouv.fr/ig/documentation/)
- [Site HL7 France](https://hl7.fr)
- [Spécifications FHIR R4](https://hl7.org/fhir/R4/)
- [FSH School](https://fshschool.org/) : Apprentissage de FHIR Shorthand
