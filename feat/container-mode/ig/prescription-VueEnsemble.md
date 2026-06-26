# La prescription - Vue d'ensemble de la modélisation FHIR - Guide d'implémentation de la ePrescription v1.1.0-ballot

* [**Table of Contents**](toc.md)
* [**La prescription**](prescription-Intro.md)
* **La prescription - Vue d'ensemble de la modélisation FHIR**

## La prescription - Vue d'ensemble de la modélisation FHIR

**⚙️ Volet technique**– Cette page détaille la modélisation FHIR complète (ressources, profils, contraintes). Destinée aux développeurs et intégrateurs.

La prescription est un ensemble de **lignes de prescription**, représentées chacune par une ressource **MedicationRequest** profilée **FRMedicationRequest** pour les prescriptions de médecine de ville et les prescriptions hospitalières exécutables en ville (PHEV) et **FRInPatientMedicationRequest** pour les prescriptions intrahospitalières.

La prescription en tant que telle (le regroupement de lignes de prescription), n’est pas représentée par une ressource FHIR. En accord avec les guidelines d’HL7 International, le lien entre les différentes ressources regroupées dans une prescription est représenté par l’élément **MedicationRequest.groupIdentifier**.

Chaque **ligne de prescription** est composée d’un **médicament prescrit** et de sa **posologie**.

Le **médicament prescrit** est représenté par l’élément `MedicationRequest.medication[x]` (1..1) du profil **FRMedicationRequest** ou **FRInpatientMedicationRequest**, celui-ci peut être représenté sous forme d’une référence vers une ressource **Medication** suivant le profil idoine (cf. paragraphe suivant) ou d’un concept codé (CodeableConcept).

Selon qu’un médicament prescrit référencé est un **médicament simple** ou un **médicament composé** de plusieurs médicaments simples, le **médicament prescrit** est représenté par deux variantes de ressource **Medication**:

* **FRMedicationNonCompound**: médicament simple exprimé: 
* en spécialité identifié par son **code UCD**. Ex: **EFFERALGAN 1 000 mg, cpr dont le code UCD est 3400893766521**
* en DC (dénomination commune) identifié par son **code SMS** ou son **code technique ANSM** (dans l’attente de l’attribution d’un code SMS). Ex: **paracétamol dont le code SMS est 100000090270**
* en MV (médicament virtuel) identifié par son **code Medicabase**. Ex. **BETAMETHASONE 0,05% voie cutanée pom dont le code Medicabase est MV00000063**
 
* **FRMedicationCompound**: médicament composé de plusieurs médicaments simples exprimés en DC ou en spécialité. Ex: **glucose 5% 1L + sodium chlorure 3g + potassium chlorure 2g, composé de 3 médicaments simples, glucose, sodium chlorure et potassium chlorure, en quantités de 1L, 3g et 2g**.

Dépendance des ressources profilées par Interop’Santé

  

Noter qu’un médicament simple peut être une association de plusieurs principes actifs. Ce n’en est pas moins un médicament simple représenté par une ressource **FRMedicationNonCompound**. Ex : **CODOLIPRANE 500 mg/30 mg, cpr dont le code UCD est 3400893936047** contenant 500 mg de paracétamol et 30 mg de codéine*

La **posologie** est représentée par l’élément `dosageInstruction` de la ressource **MedicationRequest**.

Pour les règles d’implémentation détaillées (parties textuelles, terminologies, dates et durée de prescription, perfusions, patchs, dose calculée, liens entre lignes), consulter la page [Règles de modélisation](prescription-Modelisation.md).

