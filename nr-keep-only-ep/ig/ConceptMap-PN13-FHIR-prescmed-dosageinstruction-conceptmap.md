# Conversion PN13 vers FHIR pour la posologie d'une prescription de médicaments - Guide d'implémentation de la ePrescription v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Conversion PN13 vers FHIR pour la posologie d'une prescription de médicaments**

## ConceptMap: Conversion PN13 vers FHIR pour la posologie d'une prescription de médicaments 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/eprescription/ConceptMap/PN13-FHIR-prescmed-dosageinstruction-conceptmap | *Version*:0.1.0 |
| Draft as of 2025-10-28 | *Computable Name*:FrPN13FHIRMedicationPrescriptionDosageInstructiontConceptMap |

 
ConceptMap pour la conversion PN13 vers FHIR d’une posologie d’une prescritpion de médicament 

Mapping de https://interopsante.org/pn13/xsd/M_prescription_medicaments/Prescription/Element_prescr_medic/Element_posologie vers https://hl7.org/fhir/R4/dosage

**Groupe 1**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie
  * **Fréquence**: 
  * **Fréquence_structurée**: {Absent}
  * : {Absent}
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Dosage.timing.repeat.period**: Dosage.timing
  * **Dosage.timing.repeat.periodUnit**: 
  * : 1
  * ?: d
  * ?: Si la fréquence est nécessaire, en l'absence de Fréquence et Fréquence_structurée et sans indication autre de moment de prise spécifique la fréquence par défaut est d'une fois par jour

-------

**Groupe 2**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Code source**: Elément_posologie/Fréquence
  * **relation**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Code cible**: Dosage.timing.frequency
  * **Commentaire**: la terminologie locale utilisée dans le message PN13 est à traduire entre timing.frequency, timing.period et timing.periodUnit
* **Code source**: Elément_posologie/Fréquence
  * **relation**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Code cible**: Dosage.timing.period
  * **Commentaire**: la terminologie locale utilisée dans le message PN13 est à traduire entre timing.frequency, timing.period et timing.periodUnit
* **Code source**: Elément_posologie/Fréquence
  * **relation**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Code cible**: Dosage.timing.periodUnit
  * **Commentaire**: la terminologie locale utilisée dans le message PN13 est à traduire entre timing.frequency, timing.period et timing.periodUnit

-------

**Groupe 3**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Fréquence_structurée/Frq_échelle
  * **Frq_échelle**: 
  * : 1
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.periodUnit**: Dosage.timing.repeat.periodUnit
  * ?: 
  * ?: s
* **Codes**de: Elément_posologie/Fréquence_structurée/Frq_échelle
  * **Frq_échelle**: 
  * : 2
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.periodUnit**: Dosage.timing.repeat.periodUnit
  * ?: 
  * ?: min
* **Codes**de: Elément_posologie/Fréquence_structurée/Frq_échelle
  * **Frq_échelle**: 
  * : 3
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.periodUnit**: Dosage.timing.repeat.periodUnit
  * ?: 
  * ?: h
* **Codes**de: Elément_posologie/Fréquence_structurée/Frq_échelle
  * **Frq_échelle**: 
  * : 4
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.periodUnit**: Dosage.timing.repeat.periodUnit
  * ?: 
  * ?: d
* **Codes**de: Elément_posologie/Fréquence_structurée/Frq_échelle
  * **Frq_échelle**: 
  * : 5
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.periodUnit**: Dosage.timing.repeat.periodUnit
  * ?: 
  * ?: wk
* **Codes**de: Elément_posologie/Fréquence_structurée/Frq_échelle
  * **Frq_échelle**: 
  * : 6
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.periodUnit**: Dosage.timing.repeat.periodUnit
  * ?: 
  * ?: mo
* **Codes**de: Elément_posologie/Fréquence_structurée/Frq_échelle
  * **Frq_échelle**: 
  * : 7
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.periodUnit**: Dosage.timing.repeat.periodUnit
  * ?: 
  * ?: a

-------

**Groupe 4**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Fréquence_structurée/Frq_durée
  * **Frq_durée**: 
  * **Frq_filtre**: {Absent}
  * : {Absent}
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.period**: Dosage.timing.repeat.period
  * ?: 
  * ?: 1
* **Codes**de: Elément_posologie/Fréquence_structurée/Frq_durée
  * **Frq_durée**: 
  * **Frq_filtre**: 
  * : 
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Dosage.timing.repeat.period**: Dosage.timing.repeat.period
  * ?: 
  * ?: 

-------

**Groupe 5**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_1_J
  * **Frq_filtreVal_1_J**: 
  * : 1
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.dayOfWeek**: Dosage.timing.repeat.dayOfWeek
  * : 
  * ?: mon
  * ?: Si présence d'élémént(s) Frq_filtreVal_1_N, chaque Frq_filtreVal_1_N donne lieu à une occurrence de dosageInstruction reprenant dans les éléments et indiquant dans timing.repeat.boundsPeriod la semaine concernée
* **Codes**de: Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_1_J
  * **Frq_filtreVal_1_J**: 
  * : 2
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.dayOfWeek**: Dosage.timing.repeat.dayOfWeek
  * : 
  * ?: tue
  * ?: Si présence d'élémént(s) Frq_filtreVal_1_N, chaque Frq_filtreVal_1_N donne lieu à une occurrence de dosageInstruction reprenant dans les éléments et indiquant dans timing.repeat.boundsPeriod la semaine concernée
* **Codes**de: Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_1_J
  * **Frq_filtreVal_1_J**: 
  * : 3
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.dayOfWeek**: Dosage.timing.repeat.dayOfWeek
  * : 
  * ?: wed
  * ?: Si présence d'élémént(s) Frq_filtreVal_1_N, chaque Frq_filtreVal_1_N donne lieu à une occurrence de dosageInstruction reprenant dans les éléments et indiquant dans timing.repeat.boundsPeriod la semaine concernée
* **Codes**de: Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_1_J
  * **Frq_filtreVal_1_J**: 
  * : 4
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.dayOfWeek**: Dosage.timing.repeat.dayOfWeek
  * : 
  * ?: thu
  * ?: Si présence d'élémént(s) Frq_filtreVal_1_N, chaque Frq_filtreVal_1_N donne lieu à une occurrence de dosageInstruction reprenant dans les éléments et indiquant dans timing.repeat.boundsPeriod la semaine concernée
* **Codes**de: Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_1_J
  * **Frq_filtreVal_1_J**: 
  * : 5
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.dayOfWeek**: Dosage.timing.repeat.dayOfWeek
  * : 
  * ?: fri
  * ?: Si présence d'élémént(s) Frq_filtreVal_1_N, chaque Frq_filtreVal_1_N donne lieu à une occurrence de dosageInstruction reprenant dans les éléments et indiquant dans timing.repeat.boundsPeriod la semaine concernée
* **Codes**de: Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_1_J
  * **Frq_filtreVal_1_J**: 
  * : 6
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.dayOfWeek**: Dosage.timing.repeat.dayOfWeek
  * : 
  * ?: sat
  * ?: Si présence d'élémént(s) Frq_filtreVal_1_N, chaque Frq_filtreVal_1_N donne lieu à une occurrence de dosageInstruction reprenant dans les éléments et indiquant dans timing.repeat.boundsPeriod la semaine concernée
* **Codes**de: Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_1_J
  * **Frq_filtreVal_1_J**: 
  * : 7
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.dayOfWeek**: Dosage.timing.repeat.dayOfWeek
  * : 
  * ?: sun
  * ?: Si présence d'élémént(s) Frq_filtreVal_1_N, chaque Frq_filtreVal_1_N donne lieu à une occurrence de dosageInstruction reprenant dans les éléments et indiquant dans timing.repeat.boundsPeriod la semaine concernée

-------

**Groupe 6**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Code source**: Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_1_N
  * **relation**: [maps loosely to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#inexact)
  * **Code cible**: Dosage.timing.repeat
  * **Commentaire**: Frq_filtreVal_1_N indique l'index du jour sur la période indiquée par <Frq_échelle>. Chaque Frq_filtreVal_1_N fait l'objet d'une nouvelle répétition de MedicationRequest.dosageInstruction. Cf. page transformation PN13 vers FHIR

-------

**Groupe 7**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Code source**: Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_2
  * **relation**: [maps loosely to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#inexact)
  * **Code cible**: Dosage.timing.repeat
  * **Commentaire**: Frq_filtreVal_2 indique le nombre du jour du mois. Chaque Frq_filtreVal_2 fait l'objet d'une nouvelle répétition de MedicationRequest.dosageInstruction. Cf. page transformation PN13 vers FHIR

-------

**Groupe 8**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Code source**: Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_3
  * **relation**: [maps loosely to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#inexact)
  * **Code cible**: Dosage.timing.repeat
  * **Commentaire**: Frq_filtreVal_3 indique le nombre du jour de l'année. Chaque Frq_filtreVal_3 fait l'objet d'une nouvelle répétition de MedicationRequest.dosageInstruction. Cf. page transformation PN13 vers FHIR

-------

**Groupe 9**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Code source**: Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_4
  * **relation**: [maps loosely to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#inexact)
  * **Code cible**: Dosage.timing.repeat
  * **Commentaire**: Frq_filtreVal_4 indique le nombre de la semaine. Chaque Frq_filtreVal_4 fait l'objet d'une nouvelle répétition de MedicationRequest.dosageInstruction. Cf. page transformation PN13 vers FHIR

-------

**Groupe 10**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Code source**: Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_5
  * **relation**: [maps loosely to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#inexact)
  * **Code cible**: Dosage.timing.repeat
  * **Commentaire**: Frq_filtreVal_5 indique le nombre du mois. Chaque Frq_filtreVal_5 fait l'objet d'une nouvelle répétition de MedicationRequest.dosageInstruction. Cf. page transformation PN13 vers FHIR

-------

**Groupe 11**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Code source**: Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_6
  * **relation**: [maps loosely to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#inexact)
  * **Code cible**: Dosage.timing.repeat
  * **Commentaire**: Frq_filtreVal_6 indique le rang de l’occurrence, inférieur ou égal au nombre d’occurrences définies par les autres clauses de filtrage. Chaque Frq_filtreVal_6 combiné avec les autre Frq_filtreVal_X fait l'objet d'une nouvelle répétition de MedicationRequest.dosageInstruction. Cf. page transformation PN13 vers FHIR

-------

**Groupe 12**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Fréquence_structurée/Frq_multiplicité
  * **Frq_multiplicité**: 
  * **Frq_filtre**: {Absent}
  * : {Absent}
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.frequency**: Dosage.timing.repeat.frequency
  * ?: 
  * ?: 1
* **Codes**de: Elément_posologie/Fréquence_structurée/Frq_multiplicité
  * **Frq_multiplicité**: 
  * **Frq_filtre**: 
  * : 
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Dosage.timing.repeat.frequency**: Dosage.timing.repeat.frequency
  * ?: 
  * ?: 

-------

**Groupe 13**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Code source**: Elément_posologie/Fréquence_structurée/Frq_libellé
  * **relation**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Code cible**: Dosage.text
  * **Commentaire**: Frq_Libellé est une partie de MedicationRequest.dosageInstruction.text. Cf. page transformation PN13 vers FHIR

-------

**Groupe 14**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Int_temps_év_début
  * **Type_événement_début**: 
  * : 1
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * : Dosage.timing.repeat.timeOfDay
  * ?: 
  * ?: Valable uniquement pour les versions de PN13 antérieures à la v3.3. timeOfDay est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour traduire la période en heure du jour à partir de l'heure zéro

-------

**Groupe 15**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evénement_début
  * **Type_événement_début1**: 
  * : 1
  * **Codes**de: [maps loosely to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#inexact)
  * : Dosage.timing
  * ?: 
  * ?: Le type d'événement de début 1 (date-heure absolue) indique que la posologie est applicable sur les bornes définies par Dh_début et Dh_fin, il n'est pas mappé en FHIR, les bornes suffisent

-------

**Groupe 16**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evénement_début
  * **Type_événement_début1**: 
  * : 2
  * **Codes**de: [maps loosely to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#inexact)
  * : Dosage.timing
  * ?: 
  * ?: Valable uniquement pour les versions de PN13 antérieures à la v3.3. La valeur de Evénement_début est liée à une terminologie locale, le mapping est à faire au cas par cas en fonction de la nomenclature locale

-------

**Groupe 17**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 1
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 3
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.when**: Dosage.timing.repeat.when
  * : 
  * ?: AC
  * ?: 
* **Codes**de: Elément_posologie/Int_temps_év_début
  * **Evt_activité_code**: 
  * **Evt_nature**: 
  * **Type_événement_début1**: 
  * **Evt_opérateur**: 
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.when**: Dosage.timing.repeat.offset
  * : 
  * ?: 
  * ?: offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute

-------

**Groupe 18**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 1
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 4
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.offset**: Dosage.timing.repeat.when
  * **Dosage.timing.repeat.when**: 
  * ?: 0
  * ?: AC

-------

**Groupe 19**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 1
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 5
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.when**: Dosage.timing.repeat.when
  * ?: 
  * ?: C

-------

**Groupe 20**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 1
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 6
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.offset**: Dosage.timing.repeat.when
  * **Dosage.timing.repeat.when**: 
  * ?: 0
  * ?: PC

-------

**Groupe 21**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 1
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 7
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.when**: Dosage.timing.repeat.when
  * : 
  * ?: PC
  * ?: 
* **Codes**de: Elément_posologie/Int_temps_év_début
  * **Evt_activité_code**: 
  * **Evt_nature**: 
  * **Type_événement_début1**: 
  * **Evt_opérateur**: 
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.when**: Dosage.timing.repeat.offset
  * : 
  * ?: 
  * ?: offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute

-------

**Groupe 22**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 2
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 3
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.extension($fr-additional-when-values).valueCode
  * : 
  * ?: AGU
  * ?: 
* **Codes**de: Elément_posologie/Int_temps_év_début
  * **Evt_activité_code**: 
  * **Evt_nature**: 
  * **Type_événement_début1**: 
  * **Evt_opérateur**: 
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.offset
  * : 
  * ?: 
  * ?: offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute

-------

**Groupe 23**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 2
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 7
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.extension($fr-additional-when-values).valueCode
  * : 
  * ?: PGU
  * ?: 
* **Codes**de: Elément_posologie/Int_temps_év_début
  * **Evt_activité_code**: 
  * **Evt_nature**: 
  * **Type_événement_début1**: 
  * **Evt_opérateur**: 
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.offset
  * : 
  * ?: 
  * ?: offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute

-------

**Groupe 24**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 3
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 3
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.extension($fr-additional-when-values).valueCode
  * : 
  * ?: AT
  * ?: 
* **Codes**de: Elément_posologie/Int_temps_év_début
  * **Evt_activité_code**: 
  * **Evt_nature**: 
  * **Type_événement_début1**: 
  * **Evt_opérateur**: 
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.offset
  * : 
  * ?: 
  * ?: offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute

-------

**Groupe 25**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 3
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 4
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.extension($fr-additional-when-values).valueCode
  * **Dosage.timing.repeat.offset**: 
  * ?: AT
  * ?: 0

-------

**Groupe 26**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 3
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 5
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.extension($fr-additional-when-values).valueCode
  * ?: 
  * ?: T

-------

**Groupe 27**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 3
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 6
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.extension($fr-additional-when-values).valueCode
  * **Dosage.timing.repeat.offset**: 
  * ?: PT
  * ?: 0

-------

**Groupe 28**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 3
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 7
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.extension($fr-additional-when-values).valueCode
  * : 
  * ?: PT
  * ?: 
* **Codes**de: Elément_posologie/Int_temps_év_début
  * **Evt_activité_code**: 
  * **Evt_nature**: 
  * **Type_événement_début1**: 
  * **Evt_opérateur**: 
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.offset
  * : 
  * ?: 
  * ?: offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute

-------

**Groupe 29**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 4
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 3
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.when**: Dosage.timing.repeat.when
  * : 
  * ?: ACM
  * ?: 
* **Codes**de: Elément_posologie/Int_temps_év_début
  * **Evt_activité_code**: 
  * **Evt_nature**: 
  * **Type_événement_début1**: 
  * **Evt_opérateur**: 
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.when**: Dosage.timing.repeat.offset
  * : 
  * ?: 
  * ?: offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute

-------

**Groupe 30**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 4
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 4
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.offset**: Dosage.timing.repeat.when
  * **Dosage.timing.repeat.when**: 
  * ?: 0
  * ?: ACM

-------

**Groupe 31**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 4
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 5
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.when**: Dosage.timing.repeat.when
  * ?: 
  * ?: CM

-------

**Groupe 32**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 4
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 6
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.offset**: Dosage.timing.repeat.when
  * **Dosage.timing.repeat.when**: 
  * ?: 0
  * ?: PCM

-------

**Groupe 33**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 4
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 7
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.when**: Dosage.timing.repeat.when
  * : 
  * ?: PCM
  * ?: 
* **Codes**de: Elément_posologie/Int_temps_év_début
  * **Evt_activité_code**: 
  * **Evt_nature**: 
  * **Type_événement_début1**: 
  * **Evt_opérateur**: 
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.when**: Dosage.timing.repeat.offset
  * : 
  * ?: 
  * ?: offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute

-------

**Groupe 34**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 5
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 3
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.when**: Dosage.timing.repeat.when
  * : 
  * ?: ACD
  * ?: 
* **Codes**de: Elément_posologie/Int_temps_év_début
  * **Evt_activité_code**: 
  * **Evt_nature**: 
  * **Type_événement_début1**: 
  * **Evt_opérateur**: 
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.when**: Dosage.timing.repeat.offset
  * : 
  * ?: 
  * ?: offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute

-------

**Groupe 35**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 5
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 4
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.offset**: Dosage.timing.repeat.when
  * **Dosage.timing.repeat.when**: 
  * ?: 0
  * ?: ACD

-------

**Groupe 36**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 5
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 5
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.when**: Dosage.timing.repeat.when
  * ?: 
  * ?: CD

-------

**Groupe 37**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 5
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 6
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.offset**: Dosage.timing.repeat.when
  * **Dosage.timing.repeat.when**: 
  * ?: 0
  * ?: PCD

-------

**Groupe 38**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 5
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 7
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.when**: Dosage.timing.repeat.when
  * : 
  * ?: PCD
  * ?: 
* **Codes**de: Elément_posologie/Int_temps_év_début
  * **Evt_activité_code**: 
  * **Evt_nature**: 
  * **Type_événement_début1**: 
  * **Evt_opérateur**: 
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.when**: Dosage.timing.repeat.offset
  * : 
  * ?: 
  * ?: offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute

-------

**Groupe 39**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 6
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 3
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.when**: Dosage.timing.repeat.when
  * : 
  * ?: ACV
  * ?: 
* **Codes**de: Elément_posologie/Int_temps_év_début
  * **Evt_activité_code**: 
  * **Evt_nature**: 
  * **Type_événement_début1**: 
  * **Evt_opérateur**: 
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.when**: Dosage.timing.repeat.offset
  * : 
  * ?: 
  * ?: offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute

-------

**Groupe 40**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 6
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 4
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.offset**: Dosage.timing.repeat.when
  * **Dosage.timing.repeat.when**: 
  * ?: 0
  * ?: ACV

-------

**Groupe 41**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 6
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 5
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.when**: Dosage.timing.repeat.when
  * ?: 
  * ?: CV

-------

**Groupe 42**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 6
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 6
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.offset**: Dosage.timing.repeat.when
  * **Dosage.timing.repeat.when**: 
  * ?: 0
  * ?: PCV

-------

**Groupe 43**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 6
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 7
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.when**: Dosage.timing.repeat.when
  * : 
  * ?: PCV
  * ?: 
* **Codes**de: Elément_posologie/Int_temps_év_début
  * **Evt_activité_code**: 
  * **Evt_nature**: 
  * **Type_événement_début1**: 
  * **Evt_opérateur**: 
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.when**: Dosage.timing.repeat.offset
  * : 
  * ?: 
  * ?: offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute

-------

**Groupe 44**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 7
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 3
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.extension($fr-additional-when-values).valueCode
  * : 
  * ?: ASK
  * ?: 
* **Codes**de: Elément_posologie/Int_temps_év_début
  * **Evt_activité_code**: 
  * **Evt_nature**: 
  * **Type_événement_début1**: 
  * **Evt_opérateur**: 
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.offset
  * : 
  * ?: 
  * ?: offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute

-------

**Groupe 45**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 7
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 4
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.extension($fr-additional-when-values).valueCode
  * **Dosage.timing.repeat.offset**: 
  * ?: ASK
  * ?: 0

-------

**Groupe 46**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 7
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 5
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.extension($fr-additional-when-values).valueCode
  * ?: 
  * ?: SK

-------

**Groupe 47**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 7
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 6
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.extension($fr-additional-when-values).valueCode
  * **Dosage.timing.repeat.offset**: 
  * ?: PSK
  * ?: 0

-------

**Groupe 48**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 7
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 7
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.extension($fr-additional-when-values).valueCode
  * : 
  * ?: PSK
  * ?: 
* **Codes**de: Elément_posologie/Int_temps_év_début
  * **Evt_activité_code**: 
  * **Evt_nature**: 
  * **Type_événement_début1**: 
  * **Evt_opérateur**: 
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.offset
  * : 
  * ?: 
  * ?: offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute

-------

**Groupe 49**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 8
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 3
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.extension($fr-additional-when-values).valueCode
  * : 
  * ?: AMS
  * ?: 
* **Codes**de: Elément_posologie/Int_temps_év_début
  * **Evt_activité_code**: 
  * **Evt_nature**: 
  * **Type_événement_début1**: 
  * **Evt_opérateur**: 
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.offset
  * : 
  * ?: 
  * ?: offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute

-------

**Groupe 50**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 8
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 4
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.extension($fr-additional-when-values).valueCode
  * **Dosage.timing.repeat.offset**: 
  * ?: AMS
  * ?: 0

-------

**Groupe 51**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 8
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 5
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.extension($fr-additional-when-values).valueCode
  * ?: 
  * ?: MS

-------

**Groupe 52**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 8
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 6
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.extension($fr-additional-when-values).valueCode
  * **Dosage.timing.repeat.offset**: 
  * ?: PMS
  * ?: 0

-------

**Groupe 53**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 8
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 7
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.extension($fr-additional-when-values).valueCode
  * : 
  * ?: PMS
  * ?: 
* **Codes**de: Elément_posologie/Int_temps_év_début
  * **Evt_activité_code**: 
  * **Evt_nature**: 
  * **Type_événement_début1**: 
  * **Evt_opérateur**: 
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.offset
  * : 
  * ?: 
  * ?: offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute

-------

**Groupe 54**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 9
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 3
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.extension($fr-additional-when-values).valueCode
  * : 
  * ?: AAS
  * ?: 
* **Codes**de: Elément_posologie/Int_temps_év_début
  * **Evt_activité_code**: 
  * **Evt_nature**: 
  * **Type_événement_début1**: 
  * **Evt_opérateur**: 
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.offset
  * : 
  * ?: 
  * ?: offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute

-------

**Groupe 55**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 9
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 4
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.extension($fr-additional-when-values).valueCode
  * **Dosage.timing.repeat.offset**: 
  * ?: AAS
  * ?: 0

-------

**Groupe 56**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 9
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 5
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).ValueCode**: Dosage.timing.repeat.extension($fr-additional-when-values).valueCode
  * ?: 
  * ?: AS

-------

**Groupe 57**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 9
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 6
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.extension($fr-additional-when-values).ValueCode
  * **Dosage.timing.repeat.offset**: 
  * ?: PAS
  * ?: 0

-------

**Groupe 58**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 9
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 7
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.extension($fr-additional-when-values).valueCode
  * : 
  * ?: PAS
  * ?: 
* **Codes**de: Elément_posologie/Int_temps_év_début
  * **Evt_activité_code**: 
  * **Evt_nature**: 
  * **Type_événement_début1**: 
  * **Evt_opérateur**: 
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.offset
  * : 
  * ?: 
  * ?: offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute

-------

**Groupe 59**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 10
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 3
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.extension($fr-additional-when-values).valueCode
  * : 
  * ?: ABT
  * ?: 
* **Codes**de: Elément_posologie/Int_temps_év_début
  * **Evt_activité_code**: 
  * **Evt_nature**: 
  * **Type_événement_début1**: 
  * **Evt_opérateur**: 
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.offset
  * : 
  * ?: 
  * ?: offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute

-------

**Groupe 60**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code
  * **Evt_activité_code**: 
  * **Evt_nature**: 10
  * **Type_événement_début1**: 2
  * **Evt_opérateur**: 2
  * : 7
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.extension($fr-additional-when-values).valueCode
  * : 
  * ?: PBT
  * ?: 
* **Codes**de: Elément_posologie/Int_temps_év_début
  * **Evt_activité_code**: 
  * **Evt_nature**: 
  * **Type_événement_début1**: 
  * **Evt_opérateur**: 
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.extension($fradditionalwhenvalues).valueCode**: Dosage.timing.repeat.offset
  * : 
  * ?: 
  * ?: offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute

-------

**Groupe 61**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_période_explicite/Evt_horaireMin
  * **Evt_nature**: 
  * **Type_événement_début1**: 3
  * : 2
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.boundsDuration.system**: Dosage.timing.repeat.timeOfDay
  * **Dosage.timing.repeat.boundsDuration.code**: 
  * : 
  * ?: 
  * ?: Le type H d'Evt_horaireMin est à traduire en type time de FHIR
* **Codes**de: 
  * **Evt_nature**: 
  * **Type_événement_début1**: 3
  * : 1
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.boundsDuration.system**: Dosage.timing.repeat.timeOfDay
  * **Dosage.timing.repeat.boundsDuration.code**: 
  * : 
  * ?: 
  * ?: Parfois observé sur le terrain même si ça ne correspond pas exactement à la spécification PN13 V4.0.0. Le type H d'Evt_horaireMin est à traduire en type time de FHIR
* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_période_explicite/Evt_horaireMax
  * **Evt_nature**: 
  * **Type_événement_début1**: 3
  * : 2
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Dosage.timing.repeat.boundsDuration.system**: Dosage.timing.repeat.boundsDuration.value
  * **Dosage.timing.repeat.boundsDuration.code**: 
  * : http://unitsofmeasure.org
  * ?: min
  * ?: Uniquement si les valeurs d'Evt_horaireMin et d'Evt_horaireMax sont différentes. La valeur de Dosage.timing.repeat.boundsDuration.value est la différence en minute entre Evt_horaireMax et Evt_horaireMin
* **Codes**de: 
  * **Evt_nature**: 
  * **Type_événement_début1**: 3
  * : 1
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Dosage.timing.repeat.boundsDuration.system**: Dosage.timing.repeat.boundsDuration.value
  * **Dosage.timing.repeat.boundsDuration.code**: 
  * : http://unitsofmeasure.org
  * ?: min
  * ?: Parfois observé sur le terrain même si ça ne correspond pas exactement à la spécification PN13 V4.0.0. Uniquement si les valeurs d'Evt_horaireMin et d'Evt_horaireMax sont différentes. La valeur de Dosage.timing.repeat.boundsDuration.value est la différence en minute entre Evt_horaireMax et Evt_horaireMin

-------

**Groupe 62**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_période_nommée
  * **Evt_nature**: 
  * **Evt_période_nommée**: 4
  * **Type_événement_début1**: 1
  * : 2
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.when**: Dosage.timing.repeat.when
  * ?: 
  * ?: MORN
* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_période_nommée
  * **Evt_nature**: 
  * **Evt_période_nommée**: 4
  * **Type_événement_début1**: 2
  * : 2
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.when**: Dosage.timing.repeat.when
  * ?: 
  * ?: NOON
* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_période_nommée
  * **Evt_nature**: 
  * **Evt_période_nommée**: 4
  * **Type_événement_début1**: 3
  * : 2
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.when**: Dosage.timing.repeat.when
  * ?: 
  * ?: EVE
* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_période_nommée
  * **Evt_nature**: 
  * **Evt_période_nommée**: 4
  * **Type_événement_début1**: 4
  * : 2
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.when**: Dosage.timing.repeat.when
  * ?: 
  * ?: HS
* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_période_nommée
  * **Evt_nature**: 
  * **Evt_période_nommée**: 4
  * **Type_événement_début1**: 5
  * : 2
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.when**: Dosage.timing.repeat.when
  * ?: 
  * ?: NIGHT

-------

**Groupe 63**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evénement_début
  * **Type_événement_début1**: 
  * : 3
  * **Codes**de: [maps loosely to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#inexact)
  * : Dosage.asNeededCodeableConcept.text
  * ?: 
  * ?: Valable uniquement pour les versions de PN13 antérieures à la v3.3. La valeur de Evénement_début est liée à une terminologie locale, le texte est à faire au cas par cas en fonction de la nomenclature locale

-------

**Groupe 64**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code
  * **Evt_clinique_code**: 
  * **Evt_nature**: 0
  * **Type_événement_début1**: 1
  * : 3
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Dosage.asNeededBoolean**: Dosage.asNeededBoolean
  * ?: 
  * ?: true

-------

**Groupe 65**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code
  * **Evt_clinique_code**: 
  * **Evt_nature**: 1
  * **Type_événement_début1**: 1
  * : 3
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * : Dosage.asNeededCodeableConcept.text
  * ?: 
  * ?: la valeur de asNeededCodeableConcept.text est à produire à partir de Evénement_structuré/Evt_clinique/Evt_clinique_code pour indiqué le paramètre concerné et de Evénement_structuré/Evt_valeur pour indiquer la valeur du paramètre

-------

**Groupe 66**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code
  * **Evt_clinique_code**: 
  * **Evt_nature**: 2
  * **Type_événement_début1**: 1
  * : 3
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * : Dosage.asNeededCodeableConcept.text
  * ?: 
  * ?: la valeur de asNeededCodeableConcept.text est à produire à partir de Evénement_structuré/Evt_clinique/Evt_clinique_code pour indiqué le paramètre concerné et de Evénement_structuré/Evt_valeur pour indiquer la valeur du paramètre
* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code
  * **Evt_clinique_code**: 
  * **Evt_nature**: 3
  * **Type_événement_début1**: 1
  * : 3
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * : Dosage.asNeededCodeableConcept.text
  * ?: 
  * ?: la valeur de asNeededCodeableConcept.text est à produire à partir de Evénement_structuré/Evt_clinique/Evt_clinique_code pour indiqué le paramètre concerné et de Evénement_structuré/Evt_valeur pour indiquer la valeur du paramètre
* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code
  * **Evt_clinique_code**: 
  * **Evt_nature**: 4
  * **Type_événement_début1**: 1
  * : 3
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * : Dosage.asNeededCodeableConcept.text
  * ?: 
  * ?: la valeur de asNeededCodeableConcept.text est à produire à partir de Evénement_structuré/Evt_clinique/Evt_clinique_code pour indiqué le paramètre concerné et de Evénement_structuré/Evt_valeur pour indiquer la valeur du paramètre
* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code
  * **Evt_clinique_code**: 
  * **Evt_nature**: 5
  * **Type_événement_début1**: 1
  * : 3
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * : Dosage.asNeededCodeableConcept.text
  * ?: 
  * ?: la valeur de asNeededCodeableConcept.text est à produire à partir de Evénement_structuré/Evt_clinique/Evt_clinique_code pour indiqué le paramètre concerné et de Evénement_structuré/Evt_valeur pour indiquer la valeur du paramètre
* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code
  * **Evt_clinique_code**: 
  * **Evt_nature**: 6
  * **Type_événement_début1**: 1
  * : 3
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * : Dosage.asNeededCodeableConcept.text
  * ?: 
  * ?: la valeur de asNeededCodeableConcept.text est à produire à partir de Evénement_structuré/Evt_clinique/Evt_clinique_code pour indiqué le paramètre concerné et de Evénement_structuré/Evt_valeur pour indiquer la valeur du paramètre
* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code
  * **Evt_clinique_code**: 
  * **Evt_nature**: 7
  * **Type_événement_début1**: 1
  * : 3
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * : Dosage.asNeededCodeableConcept.text
  * ?: 
  * ?: la valeur de asNeededCodeableConcept.text est à produire à partir de Evénement_structuré/Evt_clinique/Evt_clinique_code pour indiqué le paramètre concerné et de Evénement_structuré/Evt_valeur pour indiquer la valeur du paramètre
* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code
  * **Evt_clinique_code**: 
  * **Evt_nature**: 8
  * **Type_événement_début1**: 1
  * : 3
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * : Dosage.asNeededCodeableConcept.text
  * ?: 
  * ?: la valeur de asNeededCodeableConcept.text est à produire à partir de Evénement_structuré/Evt_clinique/Evt_clinique_code pour indiqué le paramètre concerné et de Evénement_structuré/Evt_valeur pour indiquer la valeur du paramètre
* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code
  * **Evt_clinique_code**: 
  * **Evt_nature**: 9
  * **Type_événement_début1**: 1
  * : 3
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * : Dosage.asNeededCodeableConcept.text
  * ?: 
  * ?: la valeur de asNeededCodeableConcept.text est à produire à partir de Evénement_structuré/Evt_clinique/Evt_clinique_code pour indiqué le paramètre concerné et de Evénement_structuré/Evt_valeur pour indiquer la valeur du paramètre
* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code
  * **Evt_clinique_code**: 
  * **Evt_nature**: 10
  * **Type_événement_début1**: 1
  * : 3
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * : Dosage.asNeededCodeableConcept.text
  * ?: 
  * ?: la valeur de asNeededCodeableConcept.text est à produire à partir de Evénement_structuré/Evt_clinique/Evt_clinique_code pour indiqué le paramètre concerné et de Evénement_structuré/Evt_valeur pour indiquer la valeur du paramètre
* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code
  * **Evt_clinique_code**: 
  * **Evt_nature**: 11
  * **Type_événement_début1**: 1
  * : 3
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * : Dosage.asNeededCodeableConcept.text
  * ?: 
  * ?: la valeur de asNeededCodeableConcept.text est à produire à partir de Evénement_structuré/Evt_clinique/Evt_clinique_code pour indiqué le paramètre concerné et de Evénement_structuré/Evt_valeur pour indiquer la valeur du paramètre
* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code
  * **Evt_clinique_code**: 
  * **Evt_nature**: 12
  * **Type_événement_début1**: 1
  * : 3
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * : Dosage.asNeededCodeableConcept.text
  * ?: 
  * ?: la valeur de asNeededCodeableConcept.text est à produire à partir de Evénement_structuré/Evt_clinique/Evt_clinique_code pour indiqué le paramètre concerné et de Evénement_structuré/Evt_valeur pour indiquer la valeur du paramètre
* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code
  * **Evt_clinique_code**: 
  * **Evt_nature**: 13
  * **Type_événement_début1**: 1
  * : 3
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * : Dosage.asNeededCodeableConcept.text
  * ?: 
  * ?: la valeur de asNeededCodeableConcept.text est à produire à partir de Evénement_structuré/Evt_clinique/Evt_clinique_code pour indiqué le paramètre concerné et de Evénement_structuré/Evt_valeur pour indiquer la valeur du paramètre
* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code
  * **Evt_clinique_code**: 
  * **Evt_nature**: 14
  * **Type_événement_début1**: 1
  * : 3
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * : Dosage.asNeededCodeableConcept.text
  * ?: 
  * ?: la valeur de asNeededCodeableConcept.text est à produire à partir de Evénement_structuré/Evt_clinique/Evt_clinique_code pour indiqué le paramètre concerné et de Evénement_structuré/Evt_valeur pour indiquer la valeur du paramètre
* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code
  * **Evt_clinique_code**: 
  * **Evt_nature**: 15
  * **Type_événement_début1**: 1
  * : 3
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * : Dosage.asNeededCodeableConcept.text
  * ?: 
  * ?: la valeur de asNeededCodeableConcept.text est à produire à partir de Evénement_structuré/Evt_clinique/Evt_clinique_code pour indiqué le paramètre concerné et de Evénement_structuré/Evt_valeur pour indiquer la valeur du paramètre

-------

**Groupe 67**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Evt_structuré_début/Evénement_param_poso_cond
  * **Type_événement_début1**: 
  * : 4
  * **Codes**de: [is not related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#disjoint)
  * : 
  * ?: 
  * ?: Les types d'événement 1, 2, 3, 6 et 7 influs sur le mapping de quantité ou durée (cf. le mapping de ces éléments), les types d'événement 4 et 5 ne sont pas mappés

-------

**Groupe 68**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Code source**: Elément_posologie/Type_événement2_début
  * **relation**: [is not related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#disjoint)
  * **Code cible**: 
  * **Commentaire**: L'élément Type_événement2_début (ainsi que Evt_structuré2_début ou Evénement2_début) utilisent exactement le même mapping que l'élément Type_événement_début (ainsi que Evt_structuré2_début ou Evénement2_début). Il est à appliquer sur la même occurence de MedicationRequest.dosageInstruction que celle traduisant l'élément Type_événement_début et les éléments associés

-------

**Groupe 69**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Code source**: Elément_posologie/Type_événement_fin
  * **relation**: (not mapped)

-------

**Groupe 70**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Code source**: Elément_posologie/Type_événement2_fin
  * **relation**: (not mapped)

-------

**Groupe 71**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Durée/Nombre
  * **Evt_début**: 
  * **Evénement_param_poso_cond**: 
  * **Type_événement_début1**: 
  * : {Absent}/{Valeur différente de 4}
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * : Dosage.timing.repeat.duration
  * ?: 
  * ?: 
* **Codes**de: Elément_posologie/Durée/Nombre
  * **Evt_début**: 
  * **Evénement_param_poso_cond**: 
  * **Type_événement_début1**: 6
  * : 4
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * : Dosage.timing.repeat.durationMax
  * ?: 
  * ?: 
* **Codes**de: Elément_posologie/Durée/Nombre
  * **Evt_début**: 
  * **Evénement_param_poso_cond**: 6
  * **Type_événement_début1**: 
  * : 4
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * : Dosage.timing.repeat.durationMax
  * ?: 
  * ?: Valable uniquement pour les versions de PN13 antérieures à la v3.3

-------

**Groupe 72**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Durée/Unité
  * **Unité@Phastnomenclature**: 
  * : UCUM
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * : Dosage.timing.repeat.durationUnit
  * ?: 
  * ?: 
* **Codes**de: Elément_posologie/Durée/Unité
  * **Unité@Phastnomenclature**: 
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * : Dosage.timing.repeat.durationUnit
  * ?: 
  * ?: Dans le cas où la terminologie utilisée dans le message PN13 n'est pas UCUM, la valeur de Unité est à traduire en UCUM. Le mapping Free Set CIO-DC UNITE peut être utilisé si la terminilogie CIO est utilisée

-------

**Groupe 73**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Quantité/Nombre
  * **Unité@Phastnomenclature1**: 
  * **Unité**: 
  * **Evénement_param_poso_cond**: dose
  * **Type_événement_début1**: 
  * : {Absent}/{Valeur différente de 4}
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Dosage.timing.repeat.frequencyMax**: Dosage.doseAndRate.doseQuantity.value
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.system**: 
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.value**: 
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.code**: 
  * : 
  * ?: 
  * ?: La valeur de value est à calculer à partir Messages/M_prescription_médicaments/Prescription/Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Quantité_composant_prescrite Cf. le paragraphe Unité dose en PN13 de la page Transformation de PN13 en FHIR
* **Codes**de: Elément_posologie/Quantité/Nombre
  * **Unité@Phastnomenclature1**: 
  * **Unité**: 
  * **Evénement_param_poso_cond**: 
  * **Type_événement_début1**: 
  * : {Absent}/{Valeur différente de 4}
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Dosage.timing.repeat.frequencyMax**: Dosage.doseAndRate.doseQuantity.value
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.system**: 
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.value**: 
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.code**: 
  * : 
  * ?: 
  * ?: 
* **Codes**de: Elément_posologie/Quantité/Nombre
  * **Unité@Phastnomenclature1**: 
  * **Unité**: UCUM
  * **Evénement_param_poso_cond**: {Valeur parmi 's'/'min'/'h'/'d'/'wk'/'mo'/'a'}
  * **Type_événement_début1**: 1
  * : 4
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Dosage.timing.repeat.frequencyMax**: Dosage.timing.repeat.period
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.system**: 
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.value**: 1
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.code**: 
  * : 
  * ?: 
  * ?: 
* **Codes**de: Elément_posologie/Quantité/Nombre
  * **Unité@Phastnomenclature1**: 
  * **Unité**: UCUM
  * **Evénement_param_poso_cond**: {Valeur différente de 's'/'min'/'h'/'d'/'wk'/'mo'/'a'}
  * **Type_événement_début1**: 1
  * : 4
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.frequencyMax**: Dosage.timing.repeat.period
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.system**: 
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.value**: 1
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.code**: 
  * : 
  * ?: 
  * ?: Elément_posologie/Quantité/Unité doit être traduite en unité accpétée dans FHIR, Elément_posologie/Quantité/Nombre doit être calculé en fonction de l'unité cible
* **Codes**de: Elément_posologie/Quantité/Nombre
  * **Unité@Phastnomenclature1**: 
  * **Unité**: {Absent}/{Valeur différente de UCUM}
  * **Evénement_param_poso_cond**: 
  * **Type_événement_début1**: 1
  * : 4
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.frequencyMax**: Dosage.timing.repeat.period
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.system**: 
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.value**: 1
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.code**: 
  * : 
  * ?: 
  * ?: Elément_posologie/Quantité/Unité doit être traduite en unité accpétée dans FHIR soit par utilisation du mapping Free Set CIO-DC UNITECIO, soit par mapping de la terminologie locale utilisée. Elément_posologie/Quantité/Nombre peut être à recalculer en fonction de l'unité cible si celle-ci est différente de l'unité initiale
* **Codes**de: Elément_posologie/Quantité/Nombre
  * **Unité@Phastnomenclature1**: 
  * **Unité**: 
  * **Evénement_param_poso_cond**: 
  * **Type_événement_début1**: 2
  * : 4
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Dosage.timing.repeat.frequencyMax**: Dosage.doseAndRate.maxDosePerAdministration.value
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.system**: 
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.value**: 
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.code**: 
  * : 
  * ?: 
  * ?: 
* **Codes**de: Elément_posologie/Quantité/Nombre
  * **Unité@Phastnomenclature1**: 
  * **Unité**: 
  * **Evénement_param_poso_cond**: 
  * **Type_événement_début1**: 3
  * : 4
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Dosage.timing.repeat.frequencyMax**: Dosage.doseAndRate.maxDosePerPeriod.numerator.value
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.system**: 
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.value**: 
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.code**: http://unitsofmeasure.org
  * : 1
  * ?: d
  * ?: 
* **Codes**de: Elément_posologie/Quantité/Nombre
  * **Unité@Phastnomenclature1**: 
  * **Unité**: 
  * **Evénement_param_poso_cond**: 
  * **Type_événement_début1**: 7
  * : 4
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Dosage.timing.repeat.frequencyMax**: Dosage.doseAndRate.maxDosePerLifetime.value
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.system**: 
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.value**: 
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.code**: 
  * : 
  * ?: 
  * ?: 

-------

**Groupe 74**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Quantité/Nombre
  * **Unité@Phastnomenclature1**: 
  * **Unité**: UCUM
  * **Evt_début**: {Valeur parmi 's'/'min'/'h'/'d'/'wk'/'mo'/'a'}
  * **Type_événement_début1**: 1
  * : 4
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Dosage.timing.repeat.frequencyMax**: Dosage.timing.repeat.period
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.system**: 
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.value**: 1
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.code**: 
  * : 
  * ?: 
  * ?: Valable uniquement pour les versions de PN13 antérieures à la v3.3.
* **Codes**de: Elément_posologie/Quantité/Nombre
  * **Unité@Phastnomenclature1**: 
  * **Unité**: UCUM
  * **Evt_début**: {Valeur différente de 's'/'min'/'h'/'d'/'wk'/'mo'/'a'}
  * **Type_événement_début1**: 1
  * : 4
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.frequencyMax**: Dosage.timing.repeat.period
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.system**: 
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.value**: 1
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.code**: 
  * : 
  * ?: 
  * ?: Valable uniquement pour les versions de PN13 antérieures à la v3.3. Elément_posologie/Quantité/Unité doit être traduite en unité accpétée dans FHIR, Elément_posologie/Quantité/Nombre doit être calculé en fonction de l'unité cible
* **Codes**de: Elément_posologie/Quantité/Nombre
  * **Unité@Phastnomenclature1**: 
  * **Unité**: {Absent}/{Valeur différente de UCUM}
  * **Evt_début**: 
  * **Type_événement_début1**: 1
  * : 4
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.timing.repeat.frequencyMax**: Dosage.timing.repeat.period
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.system**: 
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.value**: 1
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.code**: 
  * : 
  * ?: 
  * ?: Valable uniquement pour les versions de PN13 antérieures à la v3.3. Elément_posologie/Quantité/Unité doit être traduite en unité accpétée dans FHIR soit par utilisation du mapping Free Set CIO-DC UNITE, soit par mapping de la terminologie locale utilisée. Elément_posologie/Quantité/Nombre peut être à recalculer en fonction de l'unité cible si celle-ci est différente de l'unité initiale
* **Codes**de: Elément_posologie/Quantité/Nombre
  * **Unité@Phastnomenclature1**: 
  * **Unité**: 
  * **Evt_début**: 
  * **Type_événement_début1**: 2
  * : 4
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Dosage.timing.repeat.frequencyMax**: Dosage.doseAndRate.maxDosePerAdministration.value
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.system**: 
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.value**: 
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.code**: 
  * : 
  * ?: 
  * ?: Valable uniquement pour les versions de PN13 antérieures à la v3.3.
* **Codes**de: Elément_posologie/Quantité/Nombre
  * **Unité@Phastnomenclature1**: 
  * **Unité**: 
  * **Evt_début**: 
  * **Type_événement_début1**: 3
  * : 4
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Dosage.timing.repeat.frequencyMax**: Dosage.doseAndRate.maxDosePerPeriod.numerator.value
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.system**: 
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.value**: 
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.code**: http://unitsofmeasure.org
  * : 1
  * ?: d
  * ?: Valable uniquement pour les versions de PN13 antérieures à la v3.3.
* **Codes**de: Elément_posologie/Quantité/Nombre
  * **Unité@Phastnomenclature1**: 
  * **Unité**: 
  * **Evt_début**: 
  * **Type_événement_début1**: 7
  * : 4
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Dosage.timing.repeat.frequencyMax**: Dosage.doseAndRate.maxDosePerLifetime.value
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.system**: 
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.value**: 
  * **Dosage.doseAndRate.maxDosePerPeriod.denominator.code**: 
  * : 
  * ?: 
  * ?: Valable uniquement pour les versions de PN13 antérieures à la v3.3.

-------

**Groupe 75**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Quantité/Unité
  * **Unité@Phastnomenclature1**: 
  * **Unité**: 
  * **Evénement_param_poso_cond**: dose
  * **Type_événement_début1**: 
  * : {Absent}/{Valeur différente de 4}
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Dosage.doseAndRate.maxDosePerPeriod.numerator.system**: Dosage.doseAndRate.doseQuantity.code
  * **Dosage.doseAndRate.maxDosePerAdministration.system**: 
  * **Dosage.doseAndRate.doseQuantity.system**: 
  * **Dosage.doseAndRate.maxDosePerLifetime.numerator.system**: 
  * : 
  * ?: 
  * ?: La valeur de code est à déduire à partir Messages/M_prescription_médicaments/Prescription/Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Quantité_composant_prescrite Cf. le paragraphe Unité dose en PN13 de la page Transformation de PN13 en FHIR
* **Codes**de: Elément_posologie/Quantité/Unité
  * **Unité@Phastnomenclature1**: 
  * **Unité**: EDQM
  * **Evénement_param_poso_cond**: 
  * **Type_événement_début1**: 
  * : {Absent}/{Valeur différente de 4}
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Dosage.doseAndRate.maxDosePerPeriod.numerator.system**: Dosage.doseAndRate.doseQuantity.code
  * **Dosage.doseAndRate.maxDosePerAdministration.system**: 
  * **Dosage.doseAndRate.doseQuantity.system**: 
  * **Dosage.doseAndRate.maxDosePerLifetime.numerator.system**: 
  * : http://data.esante.gouv.fr/coe/standardterms
  * ?: 
  * ?: 
* **Codes**de: Elément_posologie/Quantité/Unité
  * **Unité@Phastnomenclature1**: 
  * **Unité**: UCUM
  * **Evénement_param_poso_cond**: 
  * **Type_événement_début1**: 
  * : {Absent}/{Valeur différente de 4}
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Dosage.doseAndRate.maxDosePerPeriod.numerator.system**: Dosage.doseAndRate.doseQuantity.code
  * **Dosage.doseAndRate.maxDosePerAdministration.system**: 
  * **Dosage.doseAndRate.doseQuantity.system**: 
  * **Dosage.doseAndRate.maxDosePerLifetime.numerator.system**: 
  * : http://unitsofmeasure.org
  * ?: 
  * ?: 
* **Codes**de: Elément_posologie/Quantité/Unité
  * **Unité@Phastnomenclature1**: 
  * **Unité**: 
  * **Evénement_param_poso_cond**: 
  * **Type_événement_début1**: 
  * : {Absent}/{Valeur différente de 4}
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Dosage.doseAndRate.maxDosePerPeriod.numerator.system**: Dosage.doseAndRate.doseQuantity.unit
  * **Dosage.doseAndRate.maxDosePerAdministration.system**: 
  * **Dosage.doseAndRate.doseQuantity.system**: 
  * **Dosage.doseAndRate.maxDosePerLifetime.numerator.system**: 
  * : 
  * ?: 
  * ?: Si Quantité/Unité n'est pas exprimée en EDQM ou UCUM, il est recommander, si possible, de la traduire dans une de ces terminologies (le cas échéant en utilisant le mapping Free Set CIO-DC UNITE) et d'utiliser doseQuantity.code et de référencer la terminologie utilisée dans doseQuantity.system. Si ce n'est pas possible, doseQuantity.unit peut être utilisé mais pourrait poser des problèmes d'interprétation.
* **Codes**de: Elément_posologie/Quantité/Unité
  * **Unité@Phastnomenclature1**: 
  * **Unité**: UCUM
  * **Evénement_param_poso_cond**: {Valeur parmi 's'/'min'/'h'/'d'/'wk'/'mo'/'a'}
  * **Type_événement_début1**: 1
  * : 4
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Dosage.doseAndRate.maxDosePerPeriod.numerator.system**: Dosage.timing.repeat.periodUnit
  * **Dosage.doseAndRate.maxDosePerAdministration.system**: 
  * **Dosage.doseAndRate.doseQuantity.system**: 
  * **Dosage.doseAndRate.maxDosePerLifetime.numerator.system**: 
  * : 
  * ?: 
  * ?: 
* **Codes**de: Elément_posologie/Quantité/Unité
  * **Unité@Phastnomenclature1**: 
  * **Unité**: UCUM
  * **Evénement_param_poso_cond**: {Valeur différente de 's'/'min'/'h'/'d'/'wk'/'mo'/'a'}
  * **Type_événement_début1**: 1
  * : 4
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.doseAndRate.maxDosePerPeriod.numerator.system**: Dosage.timing.repeat.periodUnit
  * **Dosage.doseAndRate.maxDosePerAdministration.system**: 
  * **Dosage.doseAndRate.doseQuantity.system**: 
  * **Dosage.doseAndRate.maxDosePerLifetime.numerator.system**: 
  * : 
  * ?: 
  * ?: Elément_posologie/Quantité/Unité doit être traduite en unité accpétée dans FHIR. Elément_posologie/Quantité/Nombre doit être calculé en fonction de l'unité cible
* **Codes**de: Elément_posologie/Quantité/Unité
  * **Unité@Phastnomenclature1**: 
  * **Unité**: {Absent}/{Valeur différente de UCUM}
  * **Evénement_param_poso_cond**: 
  * **Type_événement_début1**: 1
  * : 4
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.doseAndRate.maxDosePerPeriod.numerator.system**: Dosage.timing.repeat.periodUnit
  * **Dosage.doseAndRate.maxDosePerAdministration.system**: 
  * **Dosage.doseAndRate.doseQuantity.system**: 
  * **Dosage.doseAndRate.maxDosePerLifetime.numerator.system**: 
  * : 
  * ?: 
  * ?: Elément_posologie/Quantité/Unité doit être traduite en unité accpétée dans FHIR soit par utilisation du mapping Free Set CIO-DC UNITE, soit par mapping de la terminologie locale utilisée.
* **Codes**de: Elément_posologie/Quantité/Unité
  * **Unité@Phastnomenclature1**: 
  * **Unité**: EDQM
  * **Evénement_param_poso_cond**: 
  * **Type_événement_début1**: 2
  * : 4
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Dosage.doseAndRate.maxDosePerPeriod.numerator.system**: Dosage.doseAndRate.maxDosePerAdministration.code
  * **Dosage.doseAndRate.maxDosePerAdministration.system**: 
  * **Dosage.doseAndRate.doseQuantity.system**: 
  * **Dosage.doseAndRate.maxDosePerLifetime.numerator.system**: http://data.esante.gouv.fr/coe/standardterms
  * : 
  * ?: 
  * ?: 
* **Codes**de: Elément_posologie/Quantité/Unité
  * **Unité@Phastnomenclature1**: 
  * **Unité**: UCUM
  * **Evénement_param_poso_cond**: 
  * **Type_événement_début1**: 2
  * : 4
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Dosage.doseAndRate.maxDosePerPeriod.numerator.system**: Dosage.doseAndRate.maxDosePerAdministration.code
  * **Dosage.doseAndRate.maxDosePerAdministration.system**: 
  * **Dosage.doseAndRate.doseQuantity.system**: 
  * **Dosage.doseAndRate.maxDosePerLifetime.numerator.system**: http://unitsofmeasure.org
  * : 
  * ?: 
  * ?: 
* **Codes**de: Elément_posologie/Quantité/Unité
  * **Unité@Phastnomenclature1**: 
  * **Unité**: 
  * **Evénement_param_poso_cond**: 
  * **Type_événement_début1**: 2
  * : 4
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Dosage.doseAndRate.maxDosePerPeriod.numerator.system**: Dosage.doseAndRate.maxDosePerAdministration.unit
  * **Dosage.doseAndRate.maxDosePerAdministration.system**: 
  * **Dosage.doseAndRate.doseQuantity.system**: 
  * **Dosage.doseAndRate.maxDosePerLifetime.numerator.system**: 
  * : 
  * ?: 
  * ?: Si Quantité/Unité n'est pas exprimée en EDQM ou UCUM, il est recommander, si possible, de la traduire dans une de ces terminologies (le cas échéant en utilisant le mapping Free Set CIO-DC UNITE) et d'utiliser maxDosePerAdministration.code et de référencer la terminologie utilisée dans doseQuantity.system. Si ce n'est pas possible, maxDosePerAdministration.unit peut être utilisé mais pourrait poser des problèmes d'interprétation.
* **Codes**de: Elément_posologie/Quantité/Unité
  * **Unité@Phastnomenclature1**: 
  * **Unité**: EDQM
  * **Evénement_param_poso_cond**: 
  * **Type_événement_début1**: 3
  * : 4
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Dosage.doseAndRate.maxDosePerPeriod.numerator.system**: Dosage.doseAndRate.maxDosePerPeriod.numerator.code
  * **Dosage.doseAndRate.maxDosePerAdministration.system**: 
  * **Dosage.doseAndRate.doseQuantity.system**: http://data.esante.gouv.fr/coe/standardterms
  * **Dosage.doseAndRate.maxDosePerLifetime.numerator.system**: 
  * : 
  * ?: 
  * ?: 
* **Codes**de: Elément_posologie/Quantité/Unité
  * **Unité@Phastnomenclature1**: 
  * **Unité**: UCUM
  * **Evénement_param_poso_cond**: 
  * **Type_événement_début1**: 3
  * : 4
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Dosage.doseAndRate.maxDosePerPeriod.numerator.system**: Dosage.doseAndRate.maxDosePerPeriod.numerator.code
  * **Dosage.doseAndRate.maxDosePerAdministration.system**: 
  * **Dosage.doseAndRate.doseQuantity.system**: http://unitsofmeasure.org
  * **Dosage.doseAndRate.maxDosePerLifetime.numerator.system**: 
  * : 
  * ?: 
  * ?: 
* **Codes**de: Elément_posologie/Quantité/Unité
  * **Unité@Phastnomenclature1**: 
  * **Unité**: 
  * **Evénement_param_poso_cond**: 
  * **Type_événement_début1**: 3
  * : 4
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Dosage.doseAndRate.maxDosePerPeriod.numerator.system**: Dosage.doseAndRate.maxDosePerPeriod.numerator.unit
  * **Dosage.doseAndRate.maxDosePerAdministration.system**: 
  * **Dosage.doseAndRate.doseQuantity.system**: 
  * **Dosage.doseAndRate.maxDosePerLifetime.numerator.system**: 
  * : 
  * ?: 
  * ?: Si Quantité/Unité n'est pas exprimée en EDQM ou UCUM, il est recommander, si possible, de la traduire dans une de ces terminologies (le cas échéant en utilisant le mapping Free Set CIO-DC UNITE) et d'utiliser maxDosePerPeriod.numerator.code et de référencer la terminologie utilisée dans maxDosePerPeriod.numerator.system. Si ce n'est pas possible, maxDosePerPeriod.numerator.unit peut être utilisé mais pourrait poser des problèmes d'interprétation.
* **Codes**de: Elément_posologie/Quantité/Unité
  * **Unité@Phastnomenclature1**: 
  * **Unité**: EDQM
  * **Evénement_param_poso_cond**: 
  * **Type_événement_début1**: 7
  * : 4
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Dosage.doseAndRate.maxDosePerPeriod.numerator.system**: Dosage.doseAndRate.maxDosePerLifetime.numerator.code
  * **Dosage.doseAndRate.maxDosePerAdministration.system**: 
  * **Dosage.doseAndRate.doseQuantity.system**: 
  * **Dosage.doseAndRate.maxDosePerLifetime.numerator.system**: 
  * : 
  * ?: http://data.esante.gouv.fr/coe/standardterms
  * ?: 
* **Codes**de: Elément_posologie/Quantité/Unité
  * **Unité@Phastnomenclature1**: 
  * **Unité**: UCUM
  * **Evénement_param_poso_cond**: 
  * **Type_événement_début1**: 7
  * : 4
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Dosage.doseAndRate.maxDosePerPeriod.numerator.system**: Dosage.doseAndRate.maxDosePerLifetime.numerator.code
  * **Dosage.doseAndRate.maxDosePerAdministration.system**: 
  * **Dosage.doseAndRate.doseQuantity.system**: 
  * **Dosage.doseAndRate.maxDosePerLifetime.numerator.system**: 
  * : 
  * ?: http://unitsofmeasure.org
  * ?: 
* **Codes**de: Elément_posologie/Quantité/Unité
  * **Unité@Phastnomenclature1**: 
  * **Unité**: 
  * **Evénement_param_poso_cond**: 
  * **Type_événement_début1**: 7
  * : 4
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Dosage.doseAndRate.maxDosePerPeriod.numerator.system**: Dosage.doseAndRate.maxDosePerLifetime.numerator.unit
  * **Dosage.doseAndRate.maxDosePerAdministration.system**: 
  * **Dosage.doseAndRate.doseQuantity.system**: 
  * **Dosage.doseAndRate.maxDosePerLifetime.numerator.system**: 
  * : 
  * ?: 
  * ?: Si Quantité/Unité n'est pas exprimée en EDQM ou UCUM, il est recommander, si possible, de la traduire dans une de ces terminologies (le cas échéant en utilisant le mapping Free Set CIO-DC UNITE) et d'utiliser maxDosePerLifetime.numerator.code et de référencer la terminologie utilisée dans maxDosePerLifetime.numerator.system. Si ce n'est pas possible, maxDosePerLifetime.numerator.unit peut être utilisé mais pourrait poser des problèmes d'interprétation.

-------

**Groupe 76**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Quantité/Unité
  * **Unité@Phastnomenclature1**: 
  * **Unité**: UCUM
  * **Evt_début**: {Valeur parmi 's'/'min'/'h'/'d'/'wk'/'mo'/'a'}
  * **Type_événement_début1**: 1
  * : 4
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Dosage.doseAndRate.maxDosePerPeriod.numerator.system**: Dosage.timing.repeat.periodUnit
  * **Dosage.doseAndRate.maxDosePerAdministration.system**: 
  * **Dosage.doseAndRate.maxDosePerLifetime.numerator.system**: 
  * : 
  * ?: 
  * ?: Valable uniquement pour les versions de PN13 antérieures à la v3.3.
* **Codes**de: Elément_posologie/Quantité/Unité
  * **Unité@Phastnomenclature1**: 
  * **Unité**: UCUM
  * **Evt_début**: {Valeur différente de 's'/'min'/'h'/'d'/'wk'/'mo'/'a'}
  * **Type_événement_début1**: 1
  * : 4
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.doseAndRate.maxDosePerPeriod.numerator.system**: Dosage.timing.repeat.periodUnit
  * **Dosage.doseAndRate.maxDosePerAdministration.system**: 
  * **Dosage.doseAndRate.maxDosePerLifetime.numerator.system**: 
  * : 
  * ?: 
  * ?: Valable uniquement pour les versions de PN13 antérieures à la v3.3. Elément_posologie/Quantité/Unité doit être traduite en unité accpétée dans FHIR. Elément_posologie/Quantité/Nombre doit être calculé en fonction de l'unité cible
* **Codes**de: Elément_posologie/Quantité/Unité
  * **Unité@Phastnomenclature1**: 
  * **Unité**: {Absent}/{Valeur différente de UCUM}
  * **Evt_début**: 
  * **Type_événement_début1**: 1
  * : 4
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Dosage.doseAndRate.maxDosePerPeriod.numerator.system**: Dosage.timing.repeat.periodUnit
  * **Dosage.doseAndRate.maxDosePerAdministration.system**: 
  * **Dosage.doseAndRate.maxDosePerLifetime.numerator.system**: 
  * : 
  * ?: 
  * ?: Valable uniquement pour les versions de PN13 antérieures à la v3.3. Elément_posologie/Quantité/Unité doit être traduite en unité accpétée dans FHIR soit par utilisation du mapping Free Set CIO-DC UNITE, soit par mapping de la terminologie locale utilisée.
* **Codes**de: Elément_posologie/Quantité/Unité
  * **Unité@Phastnomenclature1**: 
  * **Unité**: EDQM
  * **Evt_début**: 
  * **Type_événement_début1**: 2
  * : 4
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Dosage.doseAndRate.maxDosePerPeriod.numerator.system**: Dosage.doseAndRate.maxDosePerAdministration.code
  * **Dosage.doseAndRate.maxDosePerAdministration.system**: 
  * **Dosage.doseAndRate.maxDosePerLifetime.numerator.system**: 
  * : http://data.esante.gouv.fr/coe/standardterms
  * ?: 
  * ?: Valable uniquement pour les versions de PN13 antérieures à la v3.3.
* **Codes**de: Elément_posologie/Quantité/Unité
  * **Unité@Phastnomenclature1**: 
  * **Unité**: 
  * **Evt_début**: 
  * **Type_événement_début1**: 2
  * : 4
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Dosage.doseAndRate.maxDosePerPeriod.numerator.system**: Dosage.doseAndRate.maxDosePerAdministration.unit
  * **Dosage.doseAndRate.maxDosePerAdministration.system**: 
  * **Dosage.doseAndRate.maxDosePerLifetime.numerator.system**: 
  * : http://unitsofmeasure.org
  * ?: 
  * ?: Valable uniquement pour les versions de PN13 antérieures à la v3.3. Si Quantité/Unité n'est pas exprimée en EDQM ou UCUM, il est recommander, si possible, de la traduire dans une de ces terminologies (le cas échéant en utilisant le mapping Free Set CIO-DC UNITE) et d'utiliser maxDosePerAdministration.code et de référencer la terminologie utilisée dans doseQuantity.system. Si ce n'est pas possible, maxDosePerAdministration.unit peut être utilisé mais pourrait poser des problèmes d'interprétation.
* **Codes**de: Elément_posologie/Quantité/Unité
  * **Unité@Phastnomenclature1**: 
  * **Unité**: EDQM
  * **Evt_début**: 
  * **Type_événement_début1**: 3
  * : 4
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Dosage.doseAndRate.maxDosePerPeriod.numerator.system**: Dosage.doseAndRate.maxDosePerPeriod.numerator.code
  * **Dosage.doseAndRate.maxDosePerAdministration.system**: 
  * **Dosage.doseAndRate.maxDosePerLifetime.numerator.system**: http://data.esante.gouv.fr/coe/standardterms
  * : 
  * ?: 
  * ?: Valable uniquement pour les versions de PN13 antérieures à la v3.3.
* **Codes**de: Elément_posologie/Quantité/Unité
  * **Unité@Phastnomenclature1**: 
  * **Unité**: UCUM
  * **Evt_début**: 
  * **Type_événement_début1**: 3
  * : 4
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Dosage.doseAndRate.maxDosePerPeriod.numerator.system**: Dosage.doseAndRate.maxDosePerPeriod.numerator.code
  * **Dosage.doseAndRate.maxDosePerAdministration.system**: 
  * **Dosage.doseAndRate.maxDosePerLifetime.numerator.system**: http://unitsofmeasure.org
  * : 
  * ?: 
  * ?: Valable uniquement pour les versions de PN13 antérieures à la v3.3.
* **Codes**de: Elément_posologie/Quantité/Unité
  * **Unité@Phastnomenclature1**: 
  * **Unité**: 
  * **Evt_début**: 
  * **Type_événement_début1**: 3
  * : 4
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Dosage.doseAndRate.maxDosePerPeriod.numerator.system**: Dosage.doseAndRate.maxDosePerPeriod.numerator.unit
  * **Dosage.doseAndRate.maxDosePerAdministration.system**: 
  * **Dosage.doseAndRate.maxDosePerLifetime.numerator.system**: 
  * : 
  * ?: 
  * ?: Valable uniquement pour les versions de PN13 antérieures à la v3.3. Si Quantité/Unité n'est pas exprimée en EDQM ou UCUM, il est recommander, si possible, de la traduire dans une de ces terminologies (le cas échéant en utilisant le mapping Free Set CIO-DC UNITE) et d'utiliser maxDosePerPeriod.numerator.code et de référencer la terminologie utilisée dans maxDosePerPeriod.numerator.system. Si ce n'est pas possible, maxDosePerPeriod.numerator.unit peut être utilisé mais pourrait poser des problèmes d'interprétation.
* **Codes**de: Elément_posologie/Quantité/Unité
  * **Unité@Phastnomenclature1**: 
  * **Unité**: EDQM
  * **Evt_début**: 
  * **Type_événement_début1**: 7
  * : 4
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Dosage.doseAndRate.maxDosePerPeriod.numerator.system**: Dosage.doseAndRate.maxDosePerLifetime.numerator.code
  * **Dosage.doseAndRate.maxDosePerAdministration.system**: 
  * **Dosage.doseAndRate.maxDosePerLifetime.numerator.system**: 
  * : 
  * ?: http://data.esante.gouv.fr/coe/standardterms
  * ?: Valable uniquement pour les versions de PN13 antérieures à la v3.3.
* **Codes**de: Elément_posologie/Quantité/Unité
  * **Unité@Phastnomenclature1**: 
  * **Unité**: UCUM
  * **Evt_début**: 
  * **Type_événement_début1**: 7
  * : 4
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Dosage.doseAndRate.maxDosePerPeriod.numerator.system**: Dosage.doseAndRate.maxDosePerLifetime.numerator.code
  * **Dosage.doseAndRate.maxDosePerAdministration.system**: 
  * **Dosage.doseAndRate.maxDosePerLifetime.numerator.system**: 
  * : 
  * ?: http://unitsofmeasure.org
  * ?: Valable uniquement pour les versions de PN13 antérieures à la v3.3.
* **Codes**de: Elément_posologie/Quantité/Unité
  * **Unité@Phastnomenclature1**: 
  * **Unité**: 
  * **Evt_début**: 
  * **Type_événement_début1**: 7
  * : 4
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Dosage.doseAndRate.maxDosePerPeriod.numerator.system**: Dosage.doseAndRate.maxDosePerLifetime.numerator.unit
  * **Dosage.doseAndRate.maxDosePerAdministration.system**: 
  * **Dosage.doseAndRate.maxDosePerLifetime.numerator.system**: 
  * : 
  * ?: 
  * ?: Valable uniquement pour les versions de PN13 antérieures à la v3.3. Si Quantité/Unité n'est pas exprimée en EDQM ou UCUM, il est recommander, si possible, de la traduire dans une de ces terminologies (le cas échéant en utilisant le mapping Free Set CIO-DC UNITE) et d'utiliser maxDosePerLifetime.numerator.code et de référencer la terminologie utilisée dans maxDosePerLifetime.numerator.system. Si ce n'est pas possible, maxDosePerLifetime.numerator.unit peut être utilisé mais pourrait poser des problèmes d'interprétation.

-------

**Groupe 77**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Débit/Nombre
  * **Unité**: 
  * **Evénement_param_poso_cond**: dose
  * **Type_événement_début1**: 
  * : {Absent}/{Valeur différente de 4}
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * : Dosage.doseAndRate.rateQuantity.value
  * ?: 
  * ?: La valeur de value est à calculer à partir Messages/M_prescription_médicaments/Prescription/Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Quantité_composant_prescrite Cf. le paragraphe Unité dose en PN13 de la page Transformation de PN13 en FHIR
* **Codes**de: Elément_posologie/Débit/Nombre
  * **Unité**: 
  * **Evénement_param_poso_cond**: 
  * **Type_événement_début1**: 
  * : {Absent}/{Valeur différente de 4}
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * : Dosage.doseAndRate.rateQuantity.value
  * ?: 
  * ?: 
* **Codes**de: Elément_posologie/Débit/Nombre
  * **Unité**: 
  * **Evénement_param_poso_cond**: 
  * **Type_événement_début1**: 4
  * : 4
  * **Codes**de: [is not related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#disjoint)
  * : 
  * ?: 
  * ?: Le débit maximal n'est pas mappé en FHIR

-------

**Groupe 78**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Débit/Nombre
  * **Evt_début**: 
  * **Type_événement_début1**: 4
  * : 4
  * **Codes**de: [is not related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#disjoint)
  * : 
  * ?: 
  * ?: Valable uniquement pour les versions de PN13 antérieures à la v3.3. Le débit maximal n'est pas mappé en FHIR

-------

**Groupe 79**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Elément_posologie/Débit/Unité
  * **Unité**: 
  * **Unité@Phastnomenclature2**: dose
  * **Type_événement_début1**: 
  * : {Absent}/{Valeur différente de 4}
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Dosage.doseAndRate.rateQuantity.system**: Dosage.doseAndRate.rateQuantity.code
  * : 
  * ?: 
  * ?: La valeur de code est à déduire à partir Messages/M_prescription_médicaments/Prescription/Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Quantité_composant_prescrite Cf. le paragraphe Unité dose en PN13 de la page Transformation de PN13 en FHIR
* **Codes**de: Elément_posologie/Débit/Unité
  * **Unité**: 
  * **Unité@Phastnomenclature2**: 
  * **Type_événement_début1**: UCUM
  * : {Absent}/{Valeur différente de 4}
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Dosage.doseAndRate.rateQuantity.system**: Dosage.doseAndRate.rateQuantity.code
  * : 
  * ?: http://unitsofmeasure.org
  * ?: 
* **Codes**de: Elément_posologie/Débit/Unité
  * **Unité**: 
  * **Unité@Phastnomenclature2**: 
  * **Type_événement_début1**: 
  * : 
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Dosage.doseAndRate.rateQuantity.system**: Dosage.doseAndRate.rateQuantity.unit
  * : 
  * ?: 
  * ?: Si Débit/Unité n'est pas exprimé en UCUM, il est recommander, si possible, de la traduire en UCUM (le cas échéant en utilisant le mapping Free Set CIO-DC UNITE) et d'utiliser rateQuantity.code ou de référencer la terminologie utilisée dans rateQuantity.system. Si ce n'est pas possible, doseQuantity.unit peut être utilisé.



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "PN13-FHIR-prescmed-dosageinstruction-conceptmap",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/ConceptMap/PN13-FHIR-prescmed-dosageinstruction-conceptmap",
  "version" : "0.1.0",
  "name" : "FrPN13FHIRMedicationPrescriptionDosageInstructiontConceptMap",
  "title" : "Conversion PN13 vers FHIR pour la posologie d'une prescription de médicaments",
  "status" : "draft",
  "date" : "2025-10-28T16:07:48+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [
    {
      "name" : "Interop'Santé",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://interopsante.org/"
        }
      ]
    },
    {
      "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://esante.gouv.fr"
        },
        {
          "system" : "email",
          "value" : "monserviceclient.annuaire@esante.gouv.fr"
        }
      ]
    }
  ],
  "description" : "ConceptMap pour la conversion PN13 vers FHIR d'une posologie d'une prescritpion de médicament",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "sourceUri" : "https://interopsante.org/pn13/xsd/M_prescription_medicaments/Prescription/Element_prescr_medic/Element_posologie",
  "targetUri" : "https://hl7.org/fhir/R4/dosage",
  "group" : [
    {
      "element" : [
        {
          "code" : "Elément_posologie",
          "target" : [
            {
              "code" : "Dosage.timing",
              "equivalence" : "relatedto",
              "comment" : "Si la fréquence est nécessaire, en l'absence de Fréquence et Fréquence_structurée et sans indication autre de moment de prise spécifique la fréquence par défaut est d'une fois par jour",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Fréquence",
                  "value" : "{Absent}"
                },
                {
                  "property" : "Elément_posologie/Fréquence_structurée",
                  "value" : "{Absent}"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.periodUnit",
                  "value" : "d"
                },
                {
                  "property" : "Dosage.timing.repeat.period",
                  "value" : "1"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Fréquence",
          "target" : [
            {
              "code" : "Dosage.timing.frequency",
              "equivalence" : "relatedto",
              "comment" : "la terminologie locale utilisée dans le message PN13 est à traduire entre timing.frequency, timing.period et timing.periodUnit"
            }
          ]
        },
        {
          "code" : "Elément_posologie/Fréquence",
          "target" : [
            {
              "code" : "Dosage.timing.period",
              "equivalence" : "relatedto",
              "comment" : "la terminologie locale utilisée dans le message PN13 est à traduire entre timing.frequency, timing.period et timing.periodUnit"
            }
          ]
        },
        {
          "code" : "Elément_posologie/Fréquence",
          "target" : [
            {
              "code" : "Dosage.timing.periodUnit",
              "equivalence" : "relatedto",
              "comment" : "la terminologie locale utilisée dans le message PN13 est à traduire entre timing.frequency, timing.period et timing.periodUnit"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Fréquence_structurée/Frq_échelle",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.periodUnit",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Fréquence_structurée/Frq_échelle",
                  "value" : "1"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.periodUnit",
                  "value" : "s"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Fréquence_structurée/Frq_échelle",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.periodUnit",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Fréquence_structurée/Frq_échelle",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.periodUnit",
                  "value" : "min"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Fréquence_structurée/Frq_échelle",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.periodUnit",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Fréquence_structurée/Frq_échelle",
                  "value" : "3"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.periodUnit",
                  "value" : "h"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Fréquence_structurée/Frq_échelle",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.periodUnit",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Fréquence_structurée/Frq_échelle",
                  "value" : "4"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.periodUnit",
                  "value" : "d"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Fréquence_structurée/Frq_échelle",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.periodUnit",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Fréquence_structurée/Frq_échelle",
                  "value" : "5"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.periodUnit",
                  "value" : "wk"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Fréquence_structurée/Frq_échelle",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.periodUnit",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Fréquence_structurée/Frq_échelle",
                  "value" : "6"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.periodUnit",
                  "value" : "mo"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Fréquence_structurée/Frq_échelle",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.periodUnit",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Fréquence_structurée/Frq_échelle",
                  "value" : "7"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.periodUnit",
                  "value" : "a"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Fréquence_structurée/Frq_durée",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.period",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Fréquence_structurée/Frq_durée",
                  "value" : "{Absent}"
                },
                {
                  "property" : "Elément_posologie/Fréquence_structurée/Frq_filtre",
                  "value" : "{Absent}"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.period",
                  "value" : "1"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Fréquence_structurée/Frq_durée",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.period",
              "equivalence" : "equal"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_1_J",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.dayOfWeek",
              "equivalence" : "equivalent",
              "comment" : "Si présence d'élémént(s) Frq_filtreVal_1_N, chaque Frq_filtreVal_1_N donne lieu à une occurrence de dosageInstruction reprenant dans les éléments et indiquant dans timing.repeat.boundsPeriod la semaine concernée",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_1_J",
                  "value" : "1"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.dayOfWeek",
                  "value" : "mon"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_1_J",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.dayOfWeek",
              "equivalence" : "equivalent",
              "comment" : "Si présence d'élémént(s) Frq_filtreVal_1_N, chaque Frq_filtreVal_1_N donne lieu à une occurrence de dosageInstruction reprenant dans les éléments et indiquant dans timing.repeat.boundsPeriod la semaine concernée",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_1_J",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.dayOfWeek",
                  "value" : "tue"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_1_J",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.dayOfWeek",
              "equivalence" : "equivalent",
              "comment" : "Si présence d'élémént(s) Frq_filtreVal_1_N, chaque Frq_filtreVal_1_N donne lieu à une occurrence de dosageInstruction reprenant dans les éléments et indiquant dans timing.repeat.boundsPeriod la semaine concernée",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_1_J",
                  "value" : "3"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.dayOfWeek",
                  "value" : "wed"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_1_J",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.dayOfWeek",
              "equivalence" : "equivalent",
              "comment" : "Si présence d'élémént(s) Frq_filtreVal_1_N, chaque Frq_filtreVal_1_N donne lieu à une occurrence de dosageInstruction reprenant dans les éléments et indiquant dans timing.repeat.boundsPeriod la semaine concernée",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_1_J",
                  "value" : "4"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.dayOfWeek",
                  "value" : "thu"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_1_J",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.dayOfWeek",
              "equivalence" : "equivalent",
              "comment" : "Si présence d'élémént(s) Frq_filtreVal_1_N, chaque Frq_filtreVal_1_N donne lieu à une occurrence de dosageInstruction reprenant dans les éléments et indiquant dans timing.repeat.boundsPeriod la semaine concernée",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_1_J",
                  "value" : "5"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.dayOfWeek",
                  "value" : "fri"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_1_J",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.dayOfWeek",
              "equivalence" : "equivalent",
              "comment" : "Si présence d'élémént(s) Frq_filtreVal_1_N, chaque Frq_filtreVal_1_N donne lieu à une occurrence de dosageInstruction reprenant dans les éléments et indiquant dans timing.repeat.boundsPeriod la semaine concernée",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_1_J",
                  "value" : "6"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.dayOfWeek",
                  "value" : "sat"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_1_J",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.dayOfWeek",
              "equivalence" : "equivalent",
              "comment" : "Si présence d'élémént(s) Frq_filtreVal_1_N, chaque Frq_filtreVal_1_N donne lieu à une occurrence de dosageInstruction reprenant dans les éléments et indiquant dans timing.repeat.boundsPeriod la semaine concernée",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_1_J",
                  "value" : "7"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.dayOfWeek",
                  "value" : "sun"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_1_N",
          "target" : [
            {
              "code" : "Dosage.timing.repeat",
              "equivalence" : "inexact",
              "comment" : "Frq_filtreVal_1_N indique l'index du jour sur la période indiquée par <Frq_échelle>. Chaque Frq_filtreVal_1_N fait l'objet d'une nouvelle répétition de MedicationRequest.dosageInstruction. Cf. page transformation PN13 vers FHIR"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_2",
          "target" : [
            {
              "code" : "Dosage.timing.repeat",
              "equivalence" : "inexact",
              "comment" : "Frq_filtreVal_2 indique le nombre du jour du mois. Chaque Frq_filtreVal_2 fait l'objet d'une nouvelle répétition de MedicationRequest.dosageInstruction. Cf. page transformation PN13 vers FHIR"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_3",
          "target" : [
            {
              "code" : "Dosage.timing.repeat",
              "equivalence" : "inexact",
              "comment" : "Frq_filtreVal_3 indique le nombre du jour de l'année. Chaque Frq_filtreVal_3 fait l'objet d'une nouvelle répétition de MedicationRequest.dosageInstruction. Cf. page transformation PN13 vers FHIR"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_4",
          "target" : [
            {
              "code" : "Dosage.timing.repeat",
              "equivalence" : "inexact",
              "comment" : "Frq_filtreVal_4 indique le nombre de la semaine. Chaque Frq_filtreVal_4 fait l'objet d'une nouvelle répétition de MedicationRequest.dosageInstruction. Cf. page transformation PN13 vers FHIR"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_5",
          "target" : [
            {
              "code" : "Dosage.timing.repeat",
              "equivalence" : "inexact",
              "comment" : "Frq_filtreVal_5 indique le nombre du mois. Chaque Frq_filtreVal_5 fait l'objet d'une nouvelle répétition de MedicationRequest.dosageInstruction. Cf. page transformation PN13 vers FHIR"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_6",
          "target" : [
            {
              "code" : "Dosage.timing.repeat",
              "equivalence" : "inexact",
              "comment" : "Frq_filtreVal_6 indique le rang de l’occurrence, inférieur ou égal au nombre d’occurrences définies par les autres clauses de filtrage. Chaque Frq_filtreVal_6 combiné avec les autre Frq_filtreVal_X fait l'objet d'une nouvelle répétition de MedicationRequest.dosageInstruction. Cf. page transformation PN13 vers FHIR"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Fréquence_structurée/Frq_multiplicité",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.frequency",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Fréquence_structurée/Frq_multiplicité",
                  "value" : "{Absent}"
                },
                {
                  "property" : "Elément_posologie/Fréquence_structurée/Frq_filtre",
                  "value" : "{Absent}"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.frequency",
                  "value" : "1"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Fréquence_structurée/Frq_multiplicité",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.frequency",
              "equivalence" : "equal"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Fréquence_structurée/Frq_libellé",
          "target" : [
            {
              "code" : "Dosage.text",
              "equivalence" : "wider",
              "comment" : "Frq_Libellé est une partie de MedicationRequest.dosageInstruction.text. Cf. page transformation PN13 vers FHIR"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Int_temps_év_début",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.timeOfDay",
              "equivalence" : "equivalent",
              "comment" : "Valable uniquement pour les versions de PN13 antérieures à la v3.3. timeOfDay est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour traduire la période en heure du jour à partir de l'heure zéro",
              "dependsOn" : [
                {
                  "property" : "#Elément_posologie/Type_événement_début",
                  "value" : "1"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evénement_début",
          "target" : [
            {
              "code" : "Dosage.timing",
              "equivalence" : "inexact",
              "comment" : "Le type d'événement de début 1 (date-heure absolue) indique que la posologie est applicable sur les bornes définies par Dh_début et Dh_fin, il n'est pas mappé en FHIR, les bornes suffisent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "1"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evénement_début",
          "target" : [
            {
              "code" : "Dosage.timing",
              "equivalence" : "inexact",
              "comment" : "Valable uniquement pour les versions de PN13 antérieures à la v3.3. La valeur de Evénement_début est liée à une terminologie locale, le mapping est à faire au cas par cas en fonction de la nomenclature locale",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.when",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.when",
                  "value" : "AC"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Int_temps_év_début",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.offset",
              "equivalence" : "equivalent",
              "comment" : "offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.when",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.when",
                  "value" : "AC"
                },
                {
                  "property" : "Dosage.timing.repeat.offset",
                  "value" : "0"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.when",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "5"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.when",
                  "value" : "C"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.when",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "6"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.when",
                  "value" : "PC"
                },
                {
                  "property" : "Dosage.timing.repeat.offset",
                  "value" : "0"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.when",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "7"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.when",
                  "value" : "PC"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Int_temps_év_début",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.offset",
              "equivalence" : "equivalent",
              "comment" : "offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
                  "value" : "AGU"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Int_temps_év_début",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.offset",
              "equivalence" : "equivalent",
              "comment" : "offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "7"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
                  "value" : "PGU"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Int_temps_év_début",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.offset",
              "equivalence" : "equivalent",
              "comment" : "offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
                  "value" : "AT"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Int_temps_év_début",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.offset",
              "equivalence" : "equivalent",
              "comment" : "offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
                  "value" : "AT"
                },
                {
                  "property" : "Dosage.timing.repeat.offset",
                  "value" : "0"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "5"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
                  "value" : "T"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "6"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
                  "value" : "PT"
                },
                {
                  "property" : "Dosage.timing.repeat.offset",
                  "value" : "0"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "7"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
                  "value" : "PT"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Int_temps_év_début",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.offset",
              "equivalence" : "equivalent",
              "comment" : "offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.when",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.when",
                  "value" : "ACM"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Int_temps_év_début",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.offset",
              "equivalence" : "equivalent",
              "comment" : "offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.when",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.when",
                  "value" : "ACM"
                },
                {
                  "property" : "Dosage.timing.repeat.offset",
                  "value" : "0"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.when",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "5"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.when",
                  "value" : "CM"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.when",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "6"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.when",
                  "value" : "PCM"
                },
                {
                  "property" : "Dosage.timing.repeat.offset",
                  "value" : "0"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.when",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "7"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.when",
                  "value" : "PCM"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Int_temps_év_début",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.offset",
              "equivalence" : "equivalent",
              "comment" : "offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.when",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "5"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.when",
                  "value" : "ACD"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Int_temps_év_début",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.offset",
              "equivalence" : "equivalent",
              "comment" : "offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.when",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "5"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.when",
                  "value" : "ACD"
                },
                {
                  "property" : "Dosage.timing.repeat.offset",
                  "value" : "0"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.when",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "5"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "5"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.when",
                  "value" : "CD"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.when",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "5"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "6"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.when",
                  "value" : "PCD"
                },
                {
                  "property" : "Dosage.timing.repeat.offset",
                  "value" : "0"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.when",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "5"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "7"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.when",
                  "value" : "PCD"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Int_temps_év_début",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.offset",
              "equivalence" : "equivalent",
              "comment" : "offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.when",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "6"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.when",
                  "value" : "ACV"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Int_temps_év_début",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.offset",
              "equivalence" : "equivalent",
              "comment" : "offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.when",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "6"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.when",
                  "value" : "ACV"
                },
                {
                  "property" : "Dosage.timing.repeat.offset",
                  "value" : "0"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.when",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "6"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "5"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.when",
                  "value" : "CV"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.when",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "6"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "6"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.when",
                  "value" : "PCV"
                },
                {
                  "property" : "Dosage.timing.repeat.offset",
                  "value" : "0"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.when",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "6"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "7"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.when",
                  "value" : "PCV"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Int_temps_év_début",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.offset",
              "equivalence" : "equivalent",
              "comment" : "offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "7"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
                  "value" : "ASK"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Int_temps_év_début",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.offset",
              "equivalence" : "equivalent",
              "comment" : "offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "7"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
                  "value" : "ASK"
                },
                {
                  "property" : "Dosage.timing.repeat.offset",
                  "value" : "0"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "7"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "5"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
                  "value" : "SK"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "7"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "6"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
                  "value" : "PSK"
                },
                {
                  "property" : "Dosage.timing.repeat.offset",
                  "value" : "0"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "7"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "7"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
                  "value" : "PSK"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Int_temps_év_début",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.offset",
              "equivalence" : "equivalent",
              "comment" : "offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "8"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
                  "value" : "AMS"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Int_temps_év_début",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.offset",
              "equivalence" : "equivalent",
              "comment" : "offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "8"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
                  "value" : "AMS"
                },
                {
                  "property" : "Dosage.timing.repeat.offset",
                  "value" : "0"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "8"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "5"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
                  "value" : "MS"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "8"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "6"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
                  "value" : "PMS"
                },
                {
                  "property" : "Dosage.timing.repeat.offset",
                  "value" : "0"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "8"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "7"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
                  "value" : "PMS"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Int_temps_év_début",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.offset",
              "equivalence" : "equivalent",
              "comment" : "offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "9"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
                  "value" : "AAS"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Int_temps_év_début",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.offset",
              "equivalence" : "equivalent",
              "comment" : "offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "9"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
                  "value" : "AAS"
                },
                {
                  "property" : "Dosage.timing.repeat.offset",
                  "value" : "0"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "9"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "5"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.extension($fr-additional-when-values).ValueCode",
                  "value" : "AS"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.extension($fr-additional-when-values).ValueCode",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "9"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "6"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
                  "value" : "PAS"
                },
                {
                  "property" : "Dosage.timing.repeat.offset",
                  "value" : "0"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "9"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "7"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
                  "value" : "PAS"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Int_temps_év_début",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.offset",
              "equivalence" : "equivalent",
              "comment" : "offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "10"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
                  "value" : "ABT"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Int_temps_év_début",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.offset",
              "equivalence" : "equivalent",
              "comment" : "offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_activité/Evt_activité_code",
                  "value" : "10"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_opérateur",
                  "value" : "7"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.extension($fr-additional-when-values).valueCode",
                  "value" : "PBT"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Int_temps_év_début",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.offset",
              "equivalence" : "equivalent",
              "comment" : "offset est à calculer à partir de Int_temps_év_début/Nombre et Int_temps_év_début/Unité pour avoir un offset en minute"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_période_explicite/Evt_horaireMin",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.timeOfDay",
              "equivalence" : "equivalent",
              "comment" : "Le type H d'Evt_horaireMin est à traduire en type time de FHIR",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                }
              ]
            }
          ]
        },
        {
          "target" : [
            {
              "code" : "Dosage.timing.repeat.timeOfDay",
              "equivalence" : "equivalent",
              "comment" : "Parfois observé sur le terrain même si ça ne correspond pas exactement à la spécification PN13 V4.0.0. Le type H d'Evt_horaireMin est à traduire en type time de FHIR",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "1"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_période_explicite/Evt_horaireMax",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.boundsDuration.value",
              "equivalence" : "relatedto",
              "comment" : "Uniquement si les valeurs d'Evt_horaireMin et d'Evt_horaireMax sont différentes. La valeur de Dosage.timing.repeat.boundsDuration.value est la différence en minute entre Evt_horaireMax et Evt_horaireMin",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.boundsDuration.code",
                  "value" : "min"
                },
                {
                  "property" : "Dosage.timing.repeat.boundsDuration.system",
                  "value" : "http://unitsofmeasure.org"
                }
              ]
            }
          ]
        },
        {
          "target" : [
            {
              "code" : "Dosage.timing.repeat.boundsDuration.value",
              "equivalence" : "relatedto",
              "comment" : "Parfois observé sur le terrain même si ça ne correspond pas exactement à la spécification PN13 V4.0.0. Uniquement si les valeurs d'Evt_horaireMin et d'Evt_horaireMax sont différentes. La valeur de Dosage.timing.repeat.boundsDuration.value est la différence en minute entre Evt_horaireMax et Evt_horaireMin",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "1"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.boundsDuration.code",
                  "value" : "min"
                },
                {
                  "property" : "Dosage.timing.repeat.boundsDuration.system",
                  "value" : "http://unitsofmeasure.org"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_période_nommée",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.when",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_période_nommée",
                  "value" : "1"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.when",
                  "value" : "MORN"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_période_nommée",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.when",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_période_nommée",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.when",
                  "value" : "NOON"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_période_nommée",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.when",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_période_nommée",
                  "value" : "3"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.when",
                  "value" : "EVE"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_période_nommée",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.when",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_période_nommée",
                  "value" : "4"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.when",
                  "value" : "HS"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_période_nommée",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.when",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_période_nommée",
                  "value" : "5"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.when",
                  "value" : "NIGHT"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evénement_début",
          "target" : [
            {
              "code" : "Dosage.asNeededCodeableConcept.text",
              "equivalence" : "inexact",
              "comment" : "Valable uniquement pour les versions de PN13 antérieures à la v3.3. La valeur de Evénement_début est liée à une terminologie locale, le texte est à faire au cas par cas en fonction de la nomenclature locale",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "3"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code",
          "target" : [
            {
              "code" : "Dosage.asNeededBoolean",
              "equivalence" : "relatedto",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_clinique/Evt_clinique_code",
                  "value" : "0"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.asNeededBoolean",
                  "value" : "true"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code",
          "target" : [
            {
              "code" : "Dosage.asNeededCodeableConcept.text",
              "equivalence" : "relatedto",
              "comment" : "la valeur de asNeededCodeableConcept.text est à produire à partir de Evénement_structuré/Evt_clinique/Evt_clinique_code pour indiqué le paramètre concerné et de Evénement_structuré/Evt_valeur pour indiquer la valeur du paramètre",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_clinique/Evt_clinique_code",
                  "value" : "1"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code",
          "target" : [
            {
              "code" : "Dosage.asNeededCodeableConcept.text",
              "equivalence" : "relatedto",
              "comment" : "la valeur de asNeededCodeableConcept.text est à produire à partir de Evénement_structuré/Evt_clinique/Evt_clinique_code pour indiqué le paramètre concerné et de Evénement_structuré/Evt_valeur pour indiquer la valeur du paramètre",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_clinique/Evt_clinique_code",
                  "value" : "2"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code",
          "target" : [
            {
              "code" : "Dosage.asNeededCodeableConcept.text",
              "equivalence" : "relatedto",
              "comment" : "la valeur de asNeededCodeableConcept.text est à produire à partir de Evénement_structuré/Evt_clinique/Evt_clinique_code pour indiqué le paramètre concerné et de Evénement_structuré/Evt_valeur pour indiquer la valeur du paramètre",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_clinique/Evt_clinique_code",
                  "value" : "3"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code",
          "target" : [
            {
              "code" : "Dosage.asNeededCodeableConcept.text",
              "equivalence" : "relatedto",
              "comment" : "la valeur de asNeededCodeableConcept.text est à produire à partir de Evénement_structuré/Evt_clinique/Evt_clinique_code pour indiqué le paramètre concerné et de Evénement_structuré/Evt_valeur pour indiquer la valeur du paramètre",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_clinique/Evt_clinique_code",
                  "value" : "4"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code",
          "target" : [
            {
              "code" : "Dosage.asNeededCodeableConcept.text",
              "equivalence" : "relatedto",
              "comment" : "la valeur de asNeededCodeableConcept.text est à produire à partir de Evénement_structuré/Evt_clinique/Evt_clinique_code pour indiqué le paramètre concerné et de Evénement_structuré/Evt_valeur pour indiquer la valeur du paramètre",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_clinique/Evt_clinique_code",
                  "value" : "5"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code",
          "target" : [
            {
              "code" : "Dosage.asNeededCodeableConcept.text",
              "equivalence" : "relatedto",
              "comment" : "la valeur de asNeededCodeableConcept.text est à produire à partir de Evénement_structuré/Evt_clinique/Evt_clinique_code pour indiqué le paramètre concerné et de Evénement_structuré/Evt_valeur pour indiquer la valeur du paramètre",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_clinique/Evt_clinique_code",
                  "value" : "6"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code",
          "target" : [
            {
              "code" : "Dosage.asNeededCodeableConcept.text",
              "equivalence" : "relatedto",
              "comment" : "la valeur de asNeededCodeableConcept.text est à produire à partir de Evénement_structuré/Evt_clinique/Evt_clinique_code pour indiqué le paramètre concerné et de Evénement_structuré/Evt_valeur pour indiquer la valeur du paramètre",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_clinique/Evt_clinique_code",
                  "value" : "7"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code",
          "target" : [
            {
              "code" : "Dosage.asNeededCodeableConcept.text",
              "equivalence" : "relatedto",
              "comment" : "la valeur de asNeededCodeableConcept.text est à produire à partir de Evénement_structuré/Evt_clinique/Evt_clinique_code pour indiqué le paramètre concerné et de Evénement_structuré/Evt_valeur pour indiquer la valeur du paramètre",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_clinique/Evt_clinique_code",
                  "value" : "8"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code",
          "target" : [
            {
              "code" : "Dosage.asNeededCodeableConcept.text",
              "equivalence" : "relatedto",
              "comment" : "la valeur de asNeededCodeableConcept.text est à produire à partir de Evénement_structuré/Evt_clinique/Evt_clinique_code pour indiqué le paramètre concerné et de Evénement_structuré/Evt_valeur pour indiquer la valeur du paramètre",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_clinique/Evt_clinique_code",
                  "value" : "9"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code",
          "target" : [
            {
              "code" : "Dosage.asNeededCodeableConcept.text",
              "equivalence" : "relatedto",
              "comment" : "la valeur de asNeededCodeableConcept.text est à produire à partir de Evénement_structuré/Evt_clinique/Evt_clinique_code pour indiqué le paramètre concerné et de Evénement_structuré/Evt_valeur pour indiquer la valeur du paramètre",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_clinique/Evt_clinique_code",
                  "value" : "10"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code",
          "target" : [
            {
              "code" : "Dosage.asNeededCodeableConcept.text",
              "equivalence" : "relatedto",
              "comment" : "la valeur de asNeededCodeableConcept.text est à produire à partir de Evénement_structuré/Evt_clinique/Evt_clinique_code pour indiqué le paramètre concerné et de Evénement_structuré/Evt_valeur pour indiquer la valeur du paramètre",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_clinique/Evt_clinique_code",
                  "value" : "11"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code",
          "target" : [
            {
              "code" : "Dosage.asNeededCodeableConcept.text",
              "equivalence" : "relatedto",
              "comment" : "la valeur de asNeededCodeableConcept.text est à produire à partir de Evénement_structuré/Evt_clinique/Evt_clinique_code pour indiqué le paramètre concerné et de Evénement_structuré/Evt_valeur pour indiquer la valeur du paramètre",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_clinique/Evt_clinique_code",
                  "value" : "12"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code",
          "target" : [
            {
              "code" : "Dosage.asNeededCodeableConcept.text",
              "equivalence" : "relatedto",
              "comment" : "la valeur de asNeededCodeableConcept.text est à produire à partir de Evénement_structuré/Evt_clinique/Evt_clinique_code pour indiqué le paramètre concerné et de Evénement_structuré/Evt_valeur pour indiquer la valeur du paramètre",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_clinique/Evt_clinique_code",
                  "value" : "13"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code",
          "target" : [
            {
              "code" : "Dosage.asNeededCodeableConcept.text",
              "equivalence" : "relatedto",
              "comment" : "la valeur de asNeededCodeableConcept.text est à produire à partir de Evénement_structuré/Evt_clinique/Evt_clinique_code pour indiqué le paramètre concerné et de Evénement_structuré/Evt_valeur pour indiquer la valeur du paramètre",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_clinique/Evt_clinique_code",
                  "value" : "14"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_clinique/Evt_clinique_code",
          "target" : [
            {
              "code" : "Dosage.asNeededCodeableConcept.text",
              "equivalence" : "relatedto",
              "comment" : "la valeur de asNeededCodeableConcept.text est à produire à partir de Evénement_structuré/Evt_clinique/Evt_clinique_code pour indiqué le paramètre concerné et de Evénement_structuré/Evt_valeur pour indiquer la valeur du paramètre",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "3"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_nature",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_structuré/Evt_objet/Evt_clinique/Evt_clinique_code",
                  "value" : "15"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Evt_structuré_début/Evénement_param_poso_cond",
          "target" : [
            {
              "equivalence" : "disjoint",
              "comment" : "Les types d'événement 1, 2, 3, 6 et 7 influs sur le mapping de quantité ou durée (cf. le mapping de ces éléments), les types d'événement 4 et 5 ne sont pas mappés",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Type_événement2_début",
          "target" : [
            {
              "equivalence" : "disjoint",
              "comment" : "L'élément Type_événement2_début (ainsi que Evt_structuré2_début ou Evénement2_début) utilisent exactement le même mapping que l'élément Type_événement_début (ainsi que Evt_structuré2_début ou Evénement2_début). Il est à appliquer sur la même occurence de MedicationRequest.dosageInstruction que celle traduisant l'élément Type_événement_début et les éléments associés"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Type_événement_fin",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Type_événement2_fin",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Durée/Nombre",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.duration",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "{Absent}/{Valeur différente de 4}"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Durée/Nombre",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.durationMax",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_param_poso_cond",
                  "value" : "6"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Durée/Nombre",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.durationMax",
              "equivalence" : "equal",
              "comment" : "Valable uniquement pour les versions de PN13 antérieures à la v3.3",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_début",
                  "value" : "6"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Durée/Unité",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.durationUnit",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Durée/Unité@Phast-nomenclature",
                  "value" : "UCUM"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Durée/Unité",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.durationUnit",
              "equivalence" : "equivalent",
              "comment" : "Dans le cas où la terminologie utilisée dans le message PN13 n'est pas UCUM, la valeur de Unité est à traduire en UCUM. Le mapping Free Set CIO-DC UNITE peut être utilisé si la terminilogie CIO est utilisée"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Quantité/Nombre",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.doseQuantity.value",
              "equivalence" : "relatedto",
              "comment" : "La valeur de value est à calculer à partir Messages/M_prescription_médicaments/Prescription/Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Quantité_composant_prescrite Cf. le paragraphe Unité dose en PN13 de la page Transformation de PN13 en FHIR",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "{Absent}/{Valeur différente de 4}"
                },
                {
                  "property" : "Elément_posologie/Quantité/Unité",
                  "value" : "dose"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Nombre",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.doseQuantity.value",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "{Absent}/{Valeur différente de 4}"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Nombre",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.period",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_param_poso_cond",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Quantité/Unité@Phast-nomenclature",
                  "value" : "UCUM"
                },
                {
                  "property" : "Elément_posologie/Quantité/Unité",
                  "value" : "{Valeur parmi 's'/'min'/'h'/'d'/'wk'/'mo'/'a'}"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.frequencyMax",
                  "value" : "1"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Nombre",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.period",
              "equivalence" : "equivalent",
              "comment" : "Elément_posologie/Quantité/Unité doit être traduite en unité accpétée dans FHIR, Elément_posologie/Quantité/Nombre doit être calculé en fonction de l'unité cible",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_param_poso_cond",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Quantité/Unité@Phast-nomenclature",
                  "value" : "UCUM"
                },
                {
                  "property" : "Elément_posologie/Quantité/Unité",
                  "value" : "{Valeur différente de 's'/'min'/'h'/'d'/'wk'/'mo'/'a'}"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.frequencyMax",
                  "value" : "1"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Nombre",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.period",
              "equivalence" : "equivalent",
              "comment" : "Elément_posologie/Quantité/Unité doit être traduite en unité accpétée dans FHIR soit par utilisation du mapping Free Set CIO-DC UNITECIO, soit par mapping de la terminologie locale utilisée. Elément_posologie/Quantité/Nombre peut être à recalculer en fonction de l'unité cible si celle-ci est différente de l'unité initiale",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_param_poso_cond",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Quantité/Unité@Phast-nomenclature",
                  "value" : "{Absent}/{Valeur différente de UCUM}"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.frequencyMax",
                  "value" : "1"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Nombre",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.maxDosePerAdministration.value",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_param_poso_cond",
                  "value" : "2"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Nombre",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.maxDosePerPeriod.numerator.value",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_param_poso_cond",
                  "value" : "3"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.doseAndRate.maxDosePerPeriod.denominator.value",
                  "value" : "1"
                },
                {
                  "property" : "Dosage.doseAndRate.maxDosePerPeriod.denominator.system",
                  "value" : "http://unitsofmeasure.org"
                },
                {
                  "property" : "Dosage.doseAndRate.maxDosePerPeriod.denominator.code",
                  "value" : "d"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Nombre",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.maxDosePerLifetime.value",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_param_poso_cond",
                  "value" : "7"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Quantité/Nombre",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.period",
              "equivalence" : "equal",
              "comment" : "Valable uniquement pour les versions de PN13 antérieures à la v3.3.",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_début",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Quantité/Unité@Phast-nomenclature",
                  "value" : "UCUM"
                },
                {
                  "property" : "Elément_posologie/Quantité/Unité",
                  "value" : "{Valeur parmi 's'/'min'/'h'/'d'/'wk'/'mo'/'a'}"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.frequencyMax",
                  "value" : "1"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Nombre",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.period",
              "equivalence" : "equivalent",
              "comment" : "Valable uniquement pour les versions de PN13 antérieures à la v3.3. Elément_posologie/Quantité/Unité doit être traduite en unité accpétée dans FHIR, Elément_posologie/Quantité/Nombre doit être calculé en fonction de l'unité cible",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_début",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Quantité/Unité@Phast-nomenclature",
                  "value" : "UCUM"
                },
                {
                  "property" : "Elément_posologie/Quantité/Unité",
                  "value" : "{Valeur différente de 's'/'min'/'h'/'d'/'wk'/'mo'/'a'}"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.frequencyMax",
                  "value" : "1"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Nombre",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.period",
              "equivalence" : "equivalent",
              "comment" : "Valable uniquement pour les versions de PN13 antérieures à la v3.3. Elément_posologie/Quantité/Unité doit être traduite en unité accpétée dans FHIR soit par utilisation du mapping Free Set CIO-DC UNITE, soit par mapping de la terminologie locale utilisée. Elément_posologie/Quantité/Nombre peut être à recalculer en fonction de l'unité cible si celle-ci est différente de l'unité initiale",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_début",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Quantité/Unité@Phast-nomenclature",
                  "value" : "{Absent}/{Valeur différente de UCUM}"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.timing.repeat.frequencyMax",
                  "value" : "1"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Nombre",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.maxDosePerAdministration.value",
              "equivalence" : "equal",
              "comment" : "Valable uniquement pour les versions de PN13 antérieures à la v3.3.",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_début",
                  "value" : "2"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Nombre",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.maxDosePerPeriod.numerator.value",
              "equivalence" : "equal",
              "comment" : "Valable uniquement pour les versions de PN13 antérieures à la v3.3.",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_début",
                  "value" : "3"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.doseAndRate.maxDosePerPeriod.denominator.value",
                  "value" : "1"
                },
                {
                  "property" : "Dosage.doseAndRate.maxDosePerPeriod.denominator.system",
                  "value" : "http://unitsofmeasure.org"
                },
                {
                  "property" : "Dosage.doseAndRate.maxDosePerPeriod.denominator.code",
                  "value" : "d"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Nombre",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.maxDosePerLifetime.value",
              "equivalence" : "equal",
              "comment" : "Valable uniquement pour les versions de PN13 antérieures à la v3.3.",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_début",
                  "value" : "7"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Quantité/Unité",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.doseQuantity.code",
              "equivalence" : "relatedto",
              "comment" : "La valeur de code est à déduire à partir Messages/M_prescription_médicaments/Prescription/Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Quantité_composant_prescrite Cf. le paragraphe Unité dose en PN13 de la page Transformation de PN13 en FHIR",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "{Absent}/{Valeur différente de 4}"
                },
                {
                  "property" : "Elément_posologie/Quantité/Unité",
                  "value" : "dose"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Unité",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.doseQuantity.code",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Quantité/Unité@Phast-nomenclature",
                  "value" : "EDQM"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "{Absent}/{Valeur différente de 4}"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.doseAndRate.doseQuantity.system",
                  "value" : "http://data.esante.gouv.fr/coe/standardterms"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Unité",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.doseQuantity.code",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Quantité/Unité@Phast-nomenclature",
                  "value" : "UCUM"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "{Absent}/{Valeur différente de 4}"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.doseAndRate.doseQuantity.system",
                  "value" : "http://unitsofmeasure.org"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Unité",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.doseQuantity.unit",
              "equivalence" : "relatedto",
              "comment" : "Si Quantité/Unité n'est pas exprimée en EDQM ou UCUM, il est recommander, si possible, de la traduire dans une de ces terminologies (le cas échéant en utilisant le mapping Free Set CIO-DC UNITE) et d'utiliser doseQuantity.code et de référencer la terminologie utilisée dans doseQuantity.system. Si ce n'est pas possible, doseQuantity.unit peut être utilisé mais pourrait poser des problèmes d'interprétation.",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "{Absent}/{Valeur différente de 4}"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Unité",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.periodUnit",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Quantité/Unité@Phast-nomenclature",
                  "value" : "UCUM"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_param_poso_cond",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Quantité/Unité",
                  "value" : "{Valeur parmi 's'/'min'/'h'/'d'/'wk'/'mo'/'a'}"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Unité",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.periodUnit",
              "equivalence" : "equivalent",
              "comment" : "Elément_posologie/Quantité/Unité doit être traduite en unité accpétée dans FHIR. Elément_posologie/Quantité/Nombre doit être calculé en fonction de l'unité cible",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Quantité/Unité@Phast-nomenclature",
                  "value" : "UCUM"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_param_poso_cond",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Quantité/Unité",
                  "value" : "{Valeur différente de 's'/'min'/'h'/'d'/'wk'/'mo'/'a'}"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Unité",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.periodUnit",
              "equivalence" : "equivalent",
              "comment" : "Elément_posologie/Quantité/Unité doit être traduite en unité accpétée dans FHIR soit par utilisation du mapping Free Set CIO-DC UNITE, soit par mapping de la terminologie locale utilisée.",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_param_poso_cond",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Quantité/Unité@Phast-nomenclature",
                  "value" : "{Absent}/{Valeur différente de UCUM}"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Unité",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.maxDosePerAdministration.code",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Quantité/Unité@Phast-nomenclature",
                  "value" : "EDQM"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_param_poso_cond",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.doseAndRate.maxDosePerAdministration.system",
                  "value" : "http://data.esante.gouv.fr/coe/standardterms"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Unité",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.maxDosePerAdministration.code",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Quantité/Unité@Phast-nomenclature",
                  "value" : "UCUM"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_param_poso_cond",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.doseAndRate.maxDosePerAdministration.system",
                  "value" : "http://unitsofmeasure.org"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Unité",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.maxDosePerAdministration.unit",
              "equivalence" : "relatedto",
              "comment" : "Si Quantité/Unité n'est pas exprimée en EDQM ou UCUM, il est recommander, si possible, de la traduire dans une de ces terminologies (le cas échéant en utilisant le mapping Free Set CIO-DC UNITE) et d'utiliser maxDosePerAdministration.code et de référencer la terminologie utilisée dans doseQuantity.system. Si ce n'est pas possible, maxDosePerAdministration.unit peut être utilisé mais pourrait poser des problèmes d'interprétation.",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_param_poso_cond",
                  "value" : "2"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Unité",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.maxDosePerPeriod.numerator.code",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Quantité/Unité@Phast-nomenclature",
                  "value" : "EDQM"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_param_poso_cond",
                  "value" : "3"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.doseAndRate.maxDosePerPeriod.numerator.system",
                  "value" : "http://data.esante.gouv.fr/coe/standardterms"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Unité",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.maxDosePerPeriod.numerator.code",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Quantité/Unité@Phast-nomenclature",
                  "value" : "UCUM"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_param_poso_cond",
                  "value" : "3"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.doseAndRate.maxDosePerPeriod.numerator.system",
                  "value" : "http://unitsofmeasure.org"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Unité",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.maxDosePerPeriod.numerator.unit",
              "equivalence" : "relatedto",
              "comment" : "Si Quantité/Unité n'est pas exprimée en EDQM ou UCUM, il est recommander, si possible, de la traduire dans une de ces terminologies (le cas échéant en utilisant le mapping Free Set CIO-DC UNITE) et d'utiliser maxDosePerPeriod.numerator.code et de référencer la terminologie utilisée dans maxDosePerPeriod.numerator.system. Si ce n'est pas possible, maxDosePerPeriod.numerator.unit peut être utilisé mais pourrait poser des problèmes d'interprétation.",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_param_poso_cond",
                  "value" : "3"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Unité",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.maxDosePerLifetime.numerator.code",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Quantité/Unité@Phast-nomenclature",
                  "value" : "EDQM"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_param_poso_cond",
                  "value" : "7"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.doseAndRate.maxDosePerLifetime.numerator.system",
                  "value" : "http://data.esante.gouv.fr/coe/standardterms"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Unité",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.maxDosePerLifetime.numerator.code",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Quantité/Unité@Phast-nomenclature",
                  "value" : "UCUM"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_param_poso_cond",
                  "value" : "7"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.doseAndRate.maxDosePerLifetime.numerator.system",
                  "value" : "http://unitsofmeasure.org"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Unité",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.maxDosePerLifetime.numerator.unit",
              "equivalence" : "relatedto",
              "comment" : "Si Quantité/Unité n'est pas exprimée en EDQM ou UCUM, il est recommander, si possible, de la traduire dans une de ces terminologies (le cas échéant en utilisant le mapping Free Set CIO-DC UNITE) et d'utiliser maxDosePerLifetime.numerator.code et de référencer la terminologie utilisée dans maxDosePerLifetime.numerator.system. Si ce n'est pas possible, maxDosePerLifetime.numerator.unit peut être utilisé mais pourrait poser des problèmes d'interprétation.",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_param_poso_cond",
                  "value" : "7"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Quantité/Unité",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.periodUnit",
              "equivalence" : "equal",
              "comment" : "Valable uniquement pour les versions de PN13 antérieures à la v3.3.",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Quantité/Unité@Phast-nomenclature",
                  "value" : "UCUM"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_début",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Quantité/Unité",
                  "value" : "{Valeur parmi 's'/'min'/'h'/'d'/'wk'/'mo'/'a'}"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Unité",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.periodUnit",
              "equivalence" : "equivalent",
              "comment" : "Valable uniquement pour les versions de PN13 antérieures à la v3.3. Elément_posologie/Quantité/Unité doit être traduite en unité accpétée dans FHIR. Elément_posologie/Quantité/Nombre doit être calculé en fonction de l'unité cible",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Quantité/Unité@Phast-nomenclature",
                  "value" : "UCUM"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_début",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Quantité/Unité",
                  "value" : "{Valeur différente de 's'/'min'/'h'/'d'/'wk'/'mo'/'a'}"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Unité",
          "target" : [
            {
              "code" : "Dosage.timing.repeat.periodUnit",
              "equivalence" : "equivalent",
              "comment" : "Valable uniquement pour les versions de PN13 antérieures à la v3.3. Elément_posologie/Quantité/Unité doit être traduite en unité accpétée dans FHIR soit par utilisation du mapping Free Set CIO-DC UNITE, soit par mapping de la terminologie locale utilisée.",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_début",
                  "value" : "1"
                },
                {
                  "property" : "Elément_posologie/Quantité/Unité@Phast-nomenclature",
                  "value" : "{Absent}/{Valeur différente de UCUM}"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Unité",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.maxDosePerAdministration.code",
              "equivalence" : "equal",
              "comment" : "Valable uniquement pour les versions de PN13 antérieures à la v3.3.",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Quantité/Unité@Phast-nomenclature",
                  "value" : "EDQM"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_début",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.doseAndRate.maxDosePerAdministration.system",
                  "value" : "http://data.esante.gouv.fr/coe/standardterms"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Unité",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.maxDosePerAdministration.unit",
              "equivalence" : "relatedto",
              "comment" : "Valable uniquement pour les versions de PN13 antérieures à la v3.3. Si Quantité/Unité n'est pas exprimée en EDQM ou UCUM, il est recommander, si possible, de la traduire dans une de ces terminologies (le cas échéant en utilisant le mapping Free Set CIO-DC UNITE) et d'utiliser maxDosePerAdministration.code et de référencer la terminologie utilisée dans doseQuantity.system. Si ce n'est pas possible, maxDosePerAdministration.unit peut être utilisé mais pourrait poser des problèmes d'interprétation.",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_début",
                  "value" : "2"
                },
                {
                  "property" : "Elément_posologie/Evt_début",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.doseAndRate.maxDosePerAdministration.system",
                  "value" : "http://unitsofmeasure.org"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Unité",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.maxDosePerPeriod.numerator.code",
              "equivalence" : "equal",
              "comment" : "Valable uniquement pour les versions de PN13 antérieures à la v3.3.",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Quantité/Unité@Phast-nomenclature",
                  "value" : "EDQM"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_début",
                  "value" : "3"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.doseAndRate.maxDosePerPeriod.numerator.system",
                  "value" : "http://data.esante.gouv.fr/coe/standardterms"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Unité",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.maxDosePerPeriod.numerator.code",
              "equivalence" : "equal",
              "comment" : "Valable uniquement pour les versions de PN13 antérieures à la v3.3.",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Quantité/Unité@Phast-nomenclature",
                  "value" : "UCUM"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_début",
                  "value" : "3"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.doseAndRate.maxDosePerPeriod.numerator.system",
                  "value" : "http://unitsofmeasure.org"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Unité",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.maxDosePerPeriod.numerator.unit",
              "equivalence" : "relatedto",
              "comment" : "Valable uniquement pour les versions de PN13 antérieures à la v3.3. Si Quantité/Unité n'est pas exprimée en EDQM ou UCUM, il est recommander, si possible, de la traduire dans une de ces terminologies (le cas échéant en utilisant le mapping Free Set CIO-DC UNITE) et d'utiliser maxDosePerPeriod.numerator.code et de référencer la terminologie utilisée dans maxDosePerPeriod.numerator.system. Si ce n'est pas possible, maxDosePerPeriod.numerator.unit peut être utilisé mais pourrait poser des problèmes d'interprétation.",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_début",
                  "value" : "3"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Unité",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.maxDosePerLifetime.numerator.code",
              "equivalence" : "equal",
              "comment" : "Valable uniquement pour les versions de PN13 antérieures à la v3.3.",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Quantité/Unité@Phast-nomenclature",
                  "value" : "EDQM"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_début",
                  "value" : "7"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.doseAndRate.maxDosePerLifetime.numerator.system",
                  "value" : "http://data.esante.gouv.fr/coe/standardterms"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Unité",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.maxDosePerLifetime.numerator.code",
              "equivalence" : "equal",
              "comment" : "Valable uniquement pour les versions de PN13 antérieures à la v3.3.",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Quantité/Unité@Phast-nomenclature",
                  "value" : "UCUM"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_début",
                  "value" : "7"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.doseAndRate.maxDosePerLifetime.numerator.system",
                  "value" : "http://unitsofmeasure.org"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Quantité/Unité",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.maxDosePerLifetime.numerator.unit",
              "equivalence" : "relatedto",
              "comment" : "Valable uniquement pour les versions de PN13 antérieures à la v3.3. Si Quantité/Unité n'est pas exprimée en EDQM ou UCUM, il est recommander, si possible, de la traduire dans une de ces terminologies (le cas échéant en utilisant le mapping Free Set CIO-DC UNITE) et d'utiliser maxDosePerLifetime.numerator.code et de référencer la terminologie utilisée dans maxDosePerLifetime.numerator.system. Si ce n'est pas possible, maxDosePerLifetime.numerator.unit peut être utilisé mais pourrait poser des problèmes d'interprétation.",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_début",
                  "value" : "7"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Débit/Nombre",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.rateQuantity.value",
              "equivalence" : "relatedto",
              "comment" : "La valeur de value est à calculer à partir Messages/M_prescription_médicaments/Prescription/Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Quantité_composant_prescrite Cf. le paragraphe Unité dose en PN13 de la page Transformation de PN13 en FHIR",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "{Absent}/{Valeur différente de 4}"
                },
                {
                  "property" : "Elément_posologie/Quantité/Unité",
                  "value" : "dose"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Débit/Nombre",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.rateQuantity.value",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "{Absent}/{Valeur différente de 4}"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Débit/Nombre",
          "target" : [
            {
              "equivalence" : "disjoint",
              "comment" : "Le débit maximal n'est pas mappé en FHIR",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_structuré_début/Evénement_param_poso_cond",
                  "value" : "4"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Débit/Nombre",
          "target" : [
            {
              "equivalence" : "disjoint",
              "comment" : "Valable uniquement pour les versions de PN13 antérieures à la v3.3. Le débit maximal n'est pas mappé en FHIR",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "4"
                },
                {
                  "property" : "Elément_posologie/Evt_début",
                  "value" : "4"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Elément_posologie/Débit/Unité",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.rateQuantity.code",
              "equivalence" : "relatedto",
              "comment" : "La valeur de code est à déduire à partir Messages/M_prescription_médicaments/Prescription/Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Quantité_composant_prescrite Cf. le paragraphe Unité dose en PN13 de la page Transformation de PN13 en FHIR",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "{Absent}/{Valeur différente de 4}"
                },
                {
                  "property" : "Elément_posologie/Quantité/Unité",
                  "value" : "dose"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Débit/Unité",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.rateQuantity.code",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Elément_posologie/Débit/Unité@Phast-nomenclature",
                  "value" : "UCUM"
                },
                {
                  "property" : "Elément_posologie/Type_événement_début",
                  "value" : "{Absent}/{Valeur différente de 4}"
                }
              ],
              "product" : [
                {
                  "property" : "Dosage.doseAndRate.rateQuantity.system",
                  "value" : "http://unitsofmeasure.org"
                }
              ]
            }
          ]
        },
        {
          "code" : "Elément_posologie/Débit/Unité",
          "target" : [
            {
              "code" : "Dosage.doseAndRate.rateQuantity.unit",
              "equivalence" : "relatedto",
              "comment" : "Si Débit/Unité n'est pas exprimé en UCUM, il est recommander, si possible, de la traduire en UCUM (le cas échéant en utilisant le mapping Free Set CIO-DC UNITE) et d'utiliser rateQuantity.code ou de référencer la terminologie utilisée dans rateQuantity.system. Si ce n'est pas possible, doseQuantity.unit peut être utilisé."
            }
          ]
        }
      ]
    }
  ]
}

```
