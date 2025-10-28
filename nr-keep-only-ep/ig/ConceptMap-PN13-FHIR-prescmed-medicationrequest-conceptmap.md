# Conversion PN13 vers FHIR pour la ligne de prescription d'une prescription de médicaments - Guide d'implémentation de la ePrescription v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Conversion PN13 vers FHIR pour la ligne de prescription d'une prescription de médicaments**

## ConceptMap: Conversion PN13 vers FHIR pour la ligne de prescription d'une prescription de médicaments 

| | |
| :--- | :--- |
| *Official URL*:https://interop.esante.gouv.fr/ig/fhir/eprescription/ConceptMap/PN13-FHIR-prescmed-medicationrequest-conceptmap | *Version*:0.1.0 |
| Draft as of 2025-10-28 | *Computable Name*:FrPN13FHIRMedicationPrescriptionMedicationRequestConceptMap |

 
ConceptMap pour la conversion PN13 vers FHIR d’une ligne de prescription d’une prescritpion de médicament 

Mapping de https://interopsante.org/pn13/xsd vers [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

**Groupe 1**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Messages@Phast-id_message
  * : 
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **MedicationRequestion.supportingInformation.extension.valueCode**: MedicationRequest.groupIdentifier.value
  * **MedicationRequest.groupIdentifier.system**: 
  * **MedicationRequestion.supportingInformation.extension.url**: 
  * **MedicationRequestion.supportingInformation.system**: {A attribuer par le systéme effectuant la traduction en fonction du système émetteur du message PN13}
  * : 
  * ?: 
  * ?: Si l'identifiant de message n'est pas présent, le groupIdentifier est à attribuer par le système effectuant la traduction du message PN13 de manière à ce que le couple (identfier.value,identifier.system) soit unique pour chaque prescription
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Mode_communication
  * : 
  * **Codes**de: (not mapped)
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Dh_prescription
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **MedicationRequestion.supportingInformation.extension.valueCode**: MedicationRequest.authoredOn
  * **MedicationRequest.groupIdentifier.system**: 
  * **MedicationRequestion.supportingInformation.extension.url**: 
  * **MedicationRequestion.supportingInformation.system**: 
  * : 
  * ?: 
  * ?: La date et l'heure sont à mettre au format FHIR avec offset
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Unité_hébergement
  * : 
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **MedicationRequestion.supportingInformation.extension.valueCode**: MedicationRequest.supportingInformation.identifier
  * **MedicationRequest.groupIdentifier.system**: 
  * **MedicationRequestion.supportingInformation.extension.url**: UFHEB
  * **MedicationRequestion.supportingInformation.system**: 
  * : https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-uf-role
  * ?: {A attribuer par le systéme effectuant la traduction}
  * ?: 
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Unité_resp_médicale
  * : 
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **MedicationRequestion.supportingInformation.extension.valueCode**: MedicationRequest.supportingInformation.identifier
  * **MedicationRequest.groupIdentifier.system**: 
  * **MedicationRequestion.supportingInformation.extension.url**: UFMED
  * **MedicationRequestion.supportingInformation.system**: 
  * : https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-uf-role
  * ?: {A attribuer par le systéme effectuant la traduction}
  * ?: 

-------

**Groupe 2**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Messages/M_prescription_médicaments/Prescription/Commentaire
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.note.text
  * **MedicationRequest.note.extension.url**: 
  * : PRESCCOM
  * ?: https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medicationrequest-note-scope
  * ?: Le texte est à préfixer par `Commentaire sur la prescription:`
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Rôle_auteur
  * : 
  * **Codes**de: (not mapped)
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Identification_auteur/Identifiant
  * : 
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.note.authorReference.identifier.value
  * **MedicationRequest.note.extension.url**: 
  * : 
  * ?: 
  * ?: 
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Identification_auteur/Domaine_identification
  * : 
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.note.authorReference.identifier.system
  * **MedicationRequest.note.extension.url**: 
  * : 
  * ?: 
  * ?: 
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Identification_auteur/Nom_usage
  * : 
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.note.authorReference.display
  * **MedicationRequest.note.extension.url**: 
  * : 
  * ?: 
  * ?: Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Identification_auteur/Prénom_usage
  * : 
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.note.authorReference.display
  * **MedicationRequest.note.extension.url**: 
  * : 
  * ?: 
  * ?: Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Identification_auteur/Initiales
  * : 
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.note.authorReference.display
  * **MedicationRequest.note.extension.url**: 
  * : 
  * ?: 
  * ?: Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Identification_auteur/Civilité
  * : 
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.note.authorReference.display
  * **MedicationRequest.note.extension.url**: 
  * : 
  * ?: 
  * ?: Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Identification_auteur/Titre
  * : 
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.note.authorReference.display
  * **MedicationRequest.note.extension.url**: 
  * : 
  * ?: 
  * ?: Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Identification_auteur/Nom_famille
  * : 
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.note.authorReference.display
  * **MedicationRequest.note.extension.url**: 
  * : 
  * ?: 
  * ?: Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Identification_auteur/Prénoms
  * : 
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.note.authorReference.display
  * **MedicationRequest.note.extension.url**: 
  * : 
  * ?: 
  * ?: Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Rôle_destinataire
  * : 
  * **Codes**de: (not mapped)
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Identification_destinataire
  * : 
  * **Codes**de: (not mapped)
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Criticité
  * : 
  * **Codes**de: (not mapped)
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Texte
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.note.text
  * **MedicationRequest.note.extension.url**: 
  * : PRESCCOM
  * ?: https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medicationrequest-note-scope
  * ?: Le texte est à préfixer par `Commentaire sur la prescription:`

-------

**Groupe 3**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Messages/M_prescription_médicaments/Prescription/Rens_compl
  * **Valeur_rens_compl**: 
  * : {Absent}
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.supportingInformation.reference
  * **MedicationRequest.note.extension.url**: 
  * : 
  * ?: 
  * ?: Ressource Observation à créer en se basant sur la ressourece conceptMap PN13-FHIR-observation-conceptmap et à référencer dans MedicationRequest.supportingInformation.reference
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl
  * **Valeur_rens_compl**: 
  * : {Présent}
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.note.text
  * **MedicationRequest.note.extension.url**: 
  * : LIPRESCRENSCOMP
  * ?: https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medicationrequest-note-scope
  * ?: Reprendre la valeur de Valeur_rens_compl en la préfixant par le libellé du type de renseignement complémentaire (Code_rens_compl) issu de la terminologie SIPh_RensComplement

-------

**Groupe 4**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Id_élément_prescr
  * : 
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **MedicationRequest.identifier.system**: MedicationRequest.identifier.value
  * ?: 
  * ?: {A attribuer par le systéme effectuant la traduction en fonction du système émetteur du message PN13}

-------

**Groupe 5**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Type_élément_prescr
  * **Fourniture**: 
  * **Urgent**: (not mapped)
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme
  * **Fourniture**: 
  * **Urgent**: 
  * : 
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **MedicationRequest.priority**: MedicationRequest.medicationReference.reference
  * **MedicationRequest.note.extension.valueCode**: 
  * **MedicationRequest.dispenseRequest.initialFill.quantity.value**: 
  * **MedicationRequest.note.extension.url**: 
  * : 
  * ?: 
  * ?: Voir les ressources concepMap PN13-FHIR-Prescmedi-medicationComp-conceptmap ou PN13-FHIR-Prescmedi-medicationNonComp-conceptmap pour le détail du mapping de cet élément
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Libellé_élément_prescr
  * **Fourniture**: 
  * **Urgent**: 
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **MedicationRequest.priority**: MedicationRequest.note.text
  * **MedicationRequest.note.extension.valueCode**: 
  * **MedicationRequest.dispenseRequest.initialFill.quantity.value**: 
  * **MedicationRequest.note.extension.url**: LIPRESCTXT
  * : 
  * ?: https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medicationrequest-note-scope
  * ?: Le texte est à préfixer par `Prescription textuelle:`
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Cré_arr_mod_val
  * **Fourniture**: 
  * **Urgent**: (not mapped)
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Urgent
  * **Fourniture**: 
  * **Urgent**: 
  * : true
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **MedicationRequest.priority**: MedicationRequest.priority
  * **MedicationRequest.note.extension.valueCode**: 
  * **MedicationRequest.dispenseRequest.initialFill.quantity.value**: urgent
  * **MedicationRequest.note.extension.url**: 
  * : 
  * ?: 
  * ?: 
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Urgent
  * **Fourniture**: 
  * **Urgent**: 
  * : false
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **MedicationRequest.priority**: MedicationRequest.priority
  * **MedicationRequest.note.extension.valueCode**: 
  * **MedicationRequest.dispenseRequest.initialFill.quantity.value**: routine
  * **MedicationRequest.note.extension.url**: 
  * : 
  * ?: 
  * ?: 
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Urgent
  * **Fourniture**: 
  * **Urgent**: 
  * : {Absent}
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **MedicationRequest.priority**: MedicationRequest.priority
  * **MedicationRequest.note.extension.valueCode**: 
  * **MedicationRequest.dispenseRequest.initialFill.quantity.value**: routine
  * **MedicationRequest.note.extension.url**: 
  * : 
  * ?: 
  * ?: 
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Fourniture
  * **Fourniture**: 
  * **Urgent**: false
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **MedicationRequest.priority**: MedicationRequest.dispenseRequest.initialFill.quantity
  * **MedicationRequest.note.extension.valueCode**: 
  * **MedicationRequest.dispenseRequest.initialFill.quantity.value**: 
  * **MedicationRequest.note.extension.url**: 
  * : 0
  * ?: 
  * ?: 
* **Codes**de: 
  * **Fourniture**: 
  * **Urgent**: true
  * : 
  * **Codes**de: [is not related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#disjoint)
  * **MedicationRequest.priority**: MedicationRequest.dispenseRequest.initialFill.quantity
  * **MedicationRequest.note.extension.valueCode**: 
  * **MedicationRequest.dispenseRequest.initialFill.quantity.value**: 
  * **MedicationRequest.note.extension.url**: 
  * : 
  * ?: 
  * ?: En l'absence d'autres indication, #MedicationRequest.dispenseRequest.initialFill n'est pas renseigné
* **Codes**de: 
  * **Fourniture**: 
  * **Urgent**: {Absent}
  * : 
  * **Codes**de: [is not related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#disjoint)
  * **MedicationRequest.priority**: MedicationRequest.dispenseRequest.initialFill.quantity
  * **MedicationRequest.note.extension.valueCode**: 
  * **MedicationRequest.dispenseRequest.initialFill.quantity.value**: 
  * **MedicationRequest.note.extension.url**: 
  * : 
  * ?: 
  * ?: En l'absence d'autres indication, #MedicationRequest.dispenseRequest.initialFill n'est pas renseigné
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Id_prescripteur
  * **Fourniture**: 
  * **Urgent**: 
  * : 
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **MedicationRequest.priority**: MedicationRequest.requester
  * **MedicationRequest.note.extension.valueCode**: 
  * **MedicationRequest.dispenseRequest.initialFill.quantity.value**: 
  * **MedicationRequest.note.extension.url**: 
  * : 
  * ?: 
  * ?: Voir la ressource concepMap PN13-FHIR-prescmed-practitioner-id-seul-conceptmap pour le détail du mapping de cet élément
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Identification_prescripteur
  * **Fourniture**: 
  * **Urgent**: 
  * : 
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **MedicationRequest.priority**: MedicationRequest.requester
  * **MedicationRequest.note.extension.valueCode**: 
  * **MedicationRequest.dispenseRequest.initialFill.quantity.value**: 
  * **MedicationRequest.note.extension.url**: 
  * : 
  * ?: 
  * ?: Voir la ressource concepMap PN13-FHIR-presmed-practitioner-identite-conceptmap pour le détail du mapping de cet élément

-------

**Groupe 6**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Voie_administration
  * **Voie_administration@Phastnomenclature**: 
  * : EDQM
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **MedicationRequest.dosageInstruction.route.coding.system**: MedicationRequest.dosageInstruction.route.coding.code
  * : 
  * ?: http://standardterms.edqm.eu
  * ?: 
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Voie_administration
  * **Voie_administration@Phastnomenclature**: 
  * : SIPh-CIO_Voie_administration
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **MedicationRequest.dosageInstruction.route.coding.system**: MedicationRequest.dosageInstruction.route.coding.code
  * : 
  * ?: http://standardterms.edqm.eu
  * ?: le code cible est à trouver dans le mapping Free Set CIO-DC VOIE
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Voie_administration
  * **Voie_administration@Phastnomenclature**: 
  * : {Absent}
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **MedicationRequest.dosageInstruction.route.coding.system**: MedicationRequest.dosageInstruction.route.coding.code
  * : 
  * ?: http://standardterms.edqm.eu
  * ?: le code cible est à trouver dans le mapping Free Set CIO-DC VOIE
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Voie_administration
  * **Voie_administration@Phastnomenclature**: 
  * : SIPh-Voie_administration
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **MedicationRequest.dosageInstruction.route.coding.system**: MedicationRequest.dosageInstruction.route.text
  * : 
  * ?: 
  * ?: Le code SIPh est à traduire en code EDQM si possible (le cas échéant en utilisant le mapping Free Set CIO-DC VOIE) à indiquer dans MedicationRequest.dosageInstruction.route.coding.code avec MedicationRequest.dosageInstruction.route.coding.system valorisé à http://standardterms.edqm.eu. Si ce n'est pas possible MedicationRequest.dosageInstruction.route.text peut être utilisé pour mettre le libellé de la voie d'administration

-------

**Groupe 7**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Lieu_administration
  * : 
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **MedicationRequest.supportingInformation.type**: MedicationRequest.dispenseRequest.performer.display
  * **MedicationRequest.extension.url**: 
  * ?: 
  * ?: 
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Dispositif_associé
  * : 
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **MedicationRequest.supportingInformation.type**: MedicationRequest.supportingInformation.display
  * **MedicationRequest.extension.url**: 
  * ?: Device
  * ?: 
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Posologie
  * : 
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **MedicationRequest.supportingInformation.type**: MedicationRequest.extension.valueMarkdown
  * **MedicationRequest.extension.url**: 
  * ?: 
  * ?: http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction

-------

**Groupe 8**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Dh_début_prescrite
  * **Dh_début**: 
  * **Dh_fin**: {Absent}
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * : MedicationRequest.dosageInstruction.timing.repeat.boundsPeriod.start
  * ?: 
  * ?: La date et l'heure sont à mettre au format FHIR avec offset
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Dh_début_prescrite
  * **Dh_début**: 
  * **Dh_fin**: {Présent}
  * : 
  * **Codes**de: [is not related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#disjoint)
  * : 
  * ?: 
  * ?: Dans le cas où l'élément Dh_début est présent, Dh_début_prescrite n'est pas mappé cf. la prescription - vue d'ensemble section Précisions sur dates et durée de prescription
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Dh_début
  * **Dh_début**: 
  * **Dh_fin**: 
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * : MedicationRequest.dosageInstruction.timing.repeat.boundsPeriod.start
  * ?: 
  * ?: La date et l'heure sont à mettre au format FHIR avec offset
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Dh_fin_prescrite
  * **Dh_début**: 
  * **Dh_fin**: 
  * : {Absent}
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * : MedicationRequest.dosageInstruction.timing.repeat.boundsPeriod.end
  * ?: 
  * ?: La date et l'heure sont à mettre au format FHIR avec offset
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Dh_fin_prescrite
  * **Dh_début**: 
  * **Dh_fin**: 
  * : {Présent}
  * **Codes**de: [is not related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#disjoint)
  * : 
  * ?: 
  * ?: Dans le cas où l'élément Dh_fin est présent, Dh_finprescrite n'est pas mappé cf. la prescription - vue d'ensemble section Précisions sur dates et durée de prescription
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Dh_fin
  * **Dh_début**: 
  * **Dh_fin**: 
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * : MedicationRequest.dosageInstruction.timing.repeat.boundsPeriod.end
  * ?: 
  * ?: La date et l'heure sont à mettre au format FHIR avec offset

-------

**Groupe 9**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Indication
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.note.text
  * **MedicationRequest.note.extension.url**: 
  * : LIPRESCIND
  * ?: https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medicationrequest-note-scope
  * ?: Le texte est à préfixer par `Indication sur la ligne de prescription:`

-------

**Groupe 10**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.note.text
  * **MedicationRequest.note.extension.url**: 
  * : LIPRESCCOMM
  * ?: https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medicationrequest-note-scope
  * ?: Le texte est à préfixer par `Commentaire sur la ligne de prescription:`
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Rôle_auteur
  * : 
  * **Codes**de: (not mapped)
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Identification_auteur/Identifiant
  * : 
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.note.authorReference.identifier.value
  * **MedicationRequest.note.extension.url**: 
  * : 
  * ?: 
  * ?: 
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Identification_auteur/Domaine_identification
  * : 
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.note.authorReference.identifier.system
  * **MedicationRequest.note.extension.url**: 
  * : 
  * ?: 
  * ?: 
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Identification_auteur/Nom_usage
  * : 
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.note.authorReference.display
  * **MedicationRequest.note.extension.url**: 
  * : 
  * ?: 
  * ?: Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Identification_auteur/Prénom_usage
  * : 
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.note.authorReference.display
  * **MedicationRequest.note.extension.url**: 
  * : 
  * ?: 
  * ?: Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Identification_auteur/Initiales
  * : 
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.note.authorReference.display
  * **MedicationRequest.note.extension.url**: 
  * : 
  * ?: 
  * ?: Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Identification_auteur/Civilité
  * : 
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.note.authorReference.display
  * **MedicationRequest.note.extension.url**: 
  * : 
  * ?: 
  * ?: Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Identification_auteur/Titre
  * : 
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.note.authorReference.display
  * **MedicationRequest.note.extension.url**: 
  * : 
  * ?: 
  * ?: Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Identification_auteur/Nom_famille
  * : 
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.note.authorReference.display
  * **MedicationRequest.note.extension.url**: 
  * : 
  * ?: 
  * ?: Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Identification_auteur/Prénoms
  * : 
  * **Codes**de: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.note.authorReference.display
  * **MedicationRequest.note.extension.url**: 
  * : 
  * ?: 
  * ?: Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Rôle_destinataire
  * : 
  * **Codes**de: (not mapped)
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Identification_destinataire
  * : 
  * **Codes**de: (not mapped)
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Criticité
  * : 
  * **Codes**de: (not mapped)
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Texte
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.note.text
  * **MedicationRequest.note.extension.url**: 
  * : LIPRESCCOMM
  * ?: https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medicationrequest-note-scope
  * ?: Le texte est à préfixer par `Commentaire sur la ligne de prescription:`

-------

**Groupe 11**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Rang_élément_prescr
  * **GoNogo**: 
  * : (not mapped)
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Id_protocole_prescrit
  * **GoNogo**: 
  * : (not mapped)
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/GoNogo
  * **GoNogo**: 
  * : 0
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.status
  * **MedicationRequest.intent**: 
  * **MedicationRequest.status**: 
  * **MedicationRequest.note.extension.url**: order
  * : unknown
  * ?: 
  * ?: 
* **Codes**de: 
  * **GoNogo**: 
  * : 1
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.status
  * **MedicationRequest.intent**: 
  * **MedicationRequest.status**: 
  * **MedicationRequest.note.extension.url**: order
  * : on-hold
  * ?: 
  * ?: 
* **Codes**de: 
  * **GoNogo**: 
  * : 2
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.status
  * **MedicationRequest.intent**: 
  * **MedicationRequest.status**: 
  * **MedicationRequest.note.extension.url**: order
  * : active
  * ?: 
  * ?: 
* **Codes**de: 
  * **GoNogo**: 
  * : 3
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.status
  * **MedicationRequest.intent**: 
  * **MedicationRequest.status**: 
  * **MedicationRequest.note.extension.url**: order
  * : active
  * ?: 
  * ?: 
* **Codes**de: 
  * **GoNogo**: 
  * : 4
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.status
  * **MedicationRequest.intent**: 
  * **MedicationRequest.status**: 
  * **MedicationRequest.note.extension.url**: order
  * : cancelled
  * ?: 
  * ?: 
* **Codes**de: 
  * **GoNogo**: 
  * : {Absent}
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.status
  * **MedicationRequest.intent**: 
  * **MedicationRequest.status**: 
  * **MedicationRequest.note.extension.url**: order
  * : active
  * ?: 
  * ?: 
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Motif_attente
  * **GoNogo**: 
  * : 
  * **Codes**de: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.statusReason.text
  * **MedicationRequest.intent**: 
  * **MedicationRequest.status**: 
  * **MedicationRequest.note.extension.url**: 
  * : 
  * ?: 
  * ?: 
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Delta_dh_référence
  * **GoNogo**: 
  * : (not mapped)
* **Codes**de: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Conditions_application
  * **GoNogo**: 
  * : 
  * **Codes**de: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **MedicationRequest.note.extension.valueCode**: MedicationRequest.note.text
  * **MedicationRequest.intent**: 
  * **MedicationRequest.status**: LIPRESCCONDAPPL
  * **MedicationRequest.note.extension.url**: 
  * : 
  * ?: https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medicationrequest-note-scope
  * ?: Le texte est à préfixer par `Condition d'application sur la ligne de prescription:`

-------

**Groupe 12**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Code source**: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit
  * **relation**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Code cible**: MedicationRequest.medicationReference
  * **Commentaire**: Voir les ressources concepMap PN13-FHIR-Prescmedi-medicationComp-conceptmap ou PN13-FHIR-Prescmedi-medicationNonComp-conceptmap pour le détail du mapping de cet élément
* **Code source**: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit
  * **relation**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Code cible**: MedicationRequest.medicationCodeableConcept
  * **Commentaire**: Si Composant_prescrit ne comporte pas d'information complémentaire à l'enregistrement du RUIM, medicationCodeableConcept peut être utilisé

-------

**Groupe 13**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Code source**: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Elément_posologie
  * **relation**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Code cible**: MedicationRequest.dosageInstruction
  * **Commentaire**: Voir la ressource concepMap PN13-FHIR-prescmed-dosageinstruction-conceptmap pour le détail du mapping de cet élément

-------

**Groupe 14**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Code source**: Messages/M_prescription_médicaments/Prescription/Protocole_prescrit_médic
  * **relation**: (not mapped)

-------

**Groupe 15**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Code source**: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Non_substituable
  * **relation**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Code cible**: MedicationRequest.substitution.allowedBoolean
  * **Commentaire**: POINT D'ATTENTION - La logique de cet élément est inversée entre PN13 et FHIR. Ainsi Non-substituable à faux en PN13 est à traduire en substitution.allowedBoolean à vrai en FHIR. Par ailleurs, cet élément est au niveau de médicament dans PN13 et au niveau de la ligne de prescription en FHIR. En cas de médicament composé, un opérateur logique OU Inclusif est à utiliser sur les valeurs PN13: si au moins un composant d'un médicament composé est non substituable, la ligne de prescription est considérée comme non substituable et donc l'élément substitution.allowedBoolean est valorisé à faux.

-------

**Groupe 16**Mapping de `terminologie de référence (CodeSystem) non spécifiée` to `terminologie de référence (CodeSystem) non spécifiée`

* **Code source**: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Référent_poso
  * **relation**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Code cible**: MedicationRequest.dosageInstruction.doseAndRate.extension($fr-basis-of-dose-component).valueReference
  * **Commentaire**: Porte la référence à la ressource Medication traduisant l'élément Composant_prescrit de PN13 pour lequel Référent_poso est vrai



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "PN13-FHIR-prescmed-medicationrequest-conceptmap",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/ConceptMap/PN13-FHIR-prescmed-medicationrequest-conceptmap",
  "version" : "0.1.0",
  "name" : "FrPN13FHIRMedicationPrescriptionMedicationRequestConceptMap",
  "title" : "Conversion PN13 vers FHIR pour la ligne de prescription d'une prescription de médicaments",
  "status" : "draft",
  "date" : "2025-10-28T16:42:48+00:00",
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
  "description" : "ConceptMap pour la conversion PN13 vers FHIR d'une ligne de prescription d'une prescritpion de médicament",
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
  "sourceUri" : "https://interopsante.org/pn13/xsd",
  "targetUri" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/StructureDefinition/fr-inpatient-medicationrequest",
  "group" : [
    {
      "element" : [
        {
          "code" : "Messages@Phast-id_message",
          "target" : [
            {
              "code" : "MedicationRequest.groupIdentifier.value",
              "equivalence" : "equal",
              "comment" : "Si l'identifiant de message n'est pas présent, le groupIdentifier est à attribuer par le système effectuant la traduction du message PN13 de manière à ce que le couple (identfier.value,identifier.system)  soit unique pour chaque prescription",
              "product" : [
                {
                  "property" : "MedicationRequest.groupIdentifier.system",
                  "value" : "{A attribuer par le systéme effectuant la traduction en fonction du système émetteur du message PN13}"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Mode_communication",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Dh_prescription",
          "target" : [
            {
              "code" : "MedicationRequest.authoredOn",
              "equivalence" : "equivalent",
              "comment" : "La date et l'heure sont à mettre au format FHIR avec offset"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Unité_hébergement",
          "target" : [
            {
              "code" : "MedicationRequest.supportingInformation.identifier",
              "equivalence" : "equal",
              "product" : [
                {
                  "property" : "MedicationRequestion.supportingInformation.system",
                  "value" : "{A attribuer par le systéme effectuant la traduction}"
                },
                {
                  "property" : "MedicationRequestion.supportingInformation.extension.url",
                  "value" : "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-uf-role"
                },
                {
                  "property" : "MedicationRequestion.supportingInformation.extension.valueCode",
                  "value" : "UFHEB"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Unité_resp_médicale",
          "target" : [
            {
              "code" : "MedicationRequest.supportingInformation.identifier",
              "equivalence" : "equal",
              "product" : [
                {
                  "property" : "MedicationRequestion.supportingInformation.system",
                  "value" : "{A attribuer par le systéme effectuant la traduction}"
                },
                {
                  "property" : "MedicationRequestion.supportingInformation.extension.url",
                  "value" : "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-uf-role"
                },
                {
                  "property" : "MedicationRequestion.supportingInformation.extension.valueCode",
                  "value" : "UFMED"
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
          "code" : "Messages/M_prescription_médicaments/Prescription/Commentaire",
          "target" : [
            {
              "code" : "MedicationRequest.note.text",
              "equivalence" : "equivalent",
              "comment" : "Le texte est à préfixer par `Commentaire sur la prescription:`",
              "product" : [
                {
                  "property" : "MedicationRequest.note.extension.url",
                  "value" : "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medicationrequest-note-scope"
                },
                {
                  "property" : "MedicationRequest.note.extension.valueCode",
                  "value" : "PRESCCOM"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Rôle_auteur",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Identification_auteur/Identifiant",
          "target" : [
            {
              "code" : "MedicationRequest.note.authorReference.identifier.value",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Identification_auteur/Domaine_identification",
          "target" : [
            {
              "code" : "MedicationRequest.note.authorReference.identifier.system",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Identification_auteur/Nom_usage",
          "target" : [
            {
              "code" : "MedicationRequest.note.authorReference.display",
              "equivalence" : "relatedto",
              "comment" : "Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Identification_auteur/Prénom_usage",
          "target" : [
            {
              "code" : "MedicationRequest.note.authorReference.display",
              "equivalence" : "relatedto",
              "comment" : "Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Identification_auteur/Initiales",
          "target" : [
            {
              "code" : "MedicationRequest.note.authorReference.display",
              "equivalence" : "relatedto",
              "comment" : "Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Identification_auteur/Civilité",
          "target" : [
            {
              "code" : "MedicationRequest.note.authorReference.display",
              "equivalence" : "relatedto",
              "comment" : "Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Identification_auteur/Titre",
          "target" : [
            {
              "code" : "MedicationRequest.note.authorReference.display",
              "equivalence" : "relatedto",
              "comment" : "Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Identification_auteur/Nom_famille",
          "target" : [
            {
              "code" : "MedicationRequest.note.authorReference.display",
              "equivalence" : "relatedto",
              "comment" : "Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Identification_auteur/Prénoms",
          "target" : [
            {
              "code" : "MedicationRequest.note.authorReference.display",
              "equivalence" : "relatedto",
              "comment" : "Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Rôle_destinataire",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Identification_destinataire",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Criticité",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Texte",
          "target" : [
            {
              "code" : "MedicationRequest.note.text",
              "equivalence" : "equivalent",
              "comment" : "Le texte est à préfixer par `Commentaire sur la prescription:`",
              "product" : [
                {
                  "property" : "MedicationRequest.note.extension.url",
                  "value" : "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medicationrequest-note-scope"
                },
                {
                  "property" : "MedicationRequest.note.extension.valueCode",
                  "value" : "PRESCCOM"
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
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl",
          "target" : [
            {
              "code" : "MedicationRequest.supportingInformation.reference",
              "equivalence" : "relatedto",
              "comment" : "Ressource Observation à créer en se basant sur la ressourece conceptMap PN13-FHIR-observation-conceptmap et à référencer dans MedicationRequest.supportingInformation.reference",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl",
                  "value" : "{Absent}"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl",
          "target" : [
            {
              "code" : "MedicationRequest.note.text",
              "equivalence" : "equivalent",
              "comment" : "Reprendre la valeur de Valeur_rens_compl en la préfixant par le libellé du type de renseignement complémentaire (Code_rens_compl) issu de la terminologie SIPh_RensComplement",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl",
                  "value" : "{Présent}"
                }
              ],
              "product" : [
                {
                  "property" : "MedicationRequest.note.extension.url",
                  "value" : "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medicationrequest-note-scope"
                },
                {
                  "property" : "MedicationRequest.note.extension.valueCode",
                  "value" : "LIPRESCRENSCOMP"
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
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Id_élément_prescr",
          "target" : [
            {
              "code" : "MedicationRequest.identifier.value",
              "equivalence" : "equal",
              "product" : [
                {
                  "property" : "MedicationRequest.identifier.system",
                  "value" : "{A attribuer par le systéme effectuant la traduction en fonction du système émetteur du message PN13}"
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
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Type_élément_prescr",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme",
          "target" : [
            {
              "code" : "MedicationRequest.medicationReference.reference",
              "equivalence" : "relatedto",
              "comment" : "Voir les ressources concepMap PN13-FHIR-Prescmedi-medicationComp-conceptmap ou PN13-FHIR-Prescmedi-medicationNonComp-conceptmap pour le détail du mapping de cet élément"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Libellé_élément_prescr",
          "target" : [
            {
              "code" : "MedicationRequest.note.text",
              "equivalence" : "equivalent",
              "comment" : "Le texte est à préfixer par `Prescription textuelle:`",
              "product" : [
                {
                  "property" : "MedicationRequest.note.extension.url",
                  "value" : "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medicationrequest-note-scope"
                },
                {
                  "property" : "MedicationRequest.note.extension.valueCode",
                  "value" : "LIPRESCTXT"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Cré_arr_mod_val",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Urgent",
          "target" : [
            {
              "code" : "MedicationRequest.priority",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Urgent",
                  "value" : "true"
                }
              ],
              "product" : [
                {
                  "property" : "MedicationRequest.priority",
                  "value" : "urgent"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Urgent",
          "target" : [
            {
              "code" : "MedicationRequest.priority",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Urgent",
                  "value" : "false"
                }
              ],
              "product" : [
                {
                  "property" : "MedicationRequest.priority",
                  "value" : "routine"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Urgent",
          "target" : [
            {
              "code" : "MedicationRequest.priority",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Urgent",
                  "value" : "{Absent}"
                }
              ],
              "product" : [
                {
                  "property" : "MedicationRequest.priority",
                  "value" : "routine"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Fourniture",
          "target" : [
            {
              "code" : "MedicationRequest.dispenseRequest.initialFill.quantity",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Fourniture",
                  "value" : "false"
                }
              ],
              "product" : [
                {
                  "property" : "MedicationRequest.dispenseRequest.initialFill.quantity.value",
                  "value" : "0"
                }
              ]
            },
            {
              "code" : "MedicationRequest.dispenseRequest.initialFill.quantity",
              "equivalence" : "disjoint",
              "comment" : "En l'absence d'autres indication, #MedicationRequest.dispenseRequest.initialFill n'est pas renseigné",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Fourniture",
                  "value" : "true"
                }
              ]
            },
            {
              "code" : "MedicationRequest.dispenseRequest.initialFill.quantity",
              "equivalence" : "disjoint",
              "comment" : "En l'absence d'autres indication, #MedicationRequest.dispenseRequest.initialFill n'est pas renseigné",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Fourniture",
                  "value" : "{Absent}"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Id_prescripteur",
          "target" : [
            {
              "code" : "MedicationRequest.requester",
              "equivalence" : "relatedto",
              "comment" : "Voir la ressource concepMap PN13-FHIR-prescmed-practitioner-id-seul-conceptmap pour le détail du mapping de cet élément"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Identification_prescripteur",
          "target" : [
            {
              "code" : "MedicationRequest.requester",
              "equivalence" : "relatedto",
              "comment" : "Voir la ressource concepMap PN13-FHIR-presmed-practitioner-identite-conceptmap pour le détail du mapping de cet élément"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Voie_administration",
          "target" : [
            {
              "code" : "MedicationRequest.dosageInstruction.route.coding.code",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Voie_administration@Phast-nomenclature",
                  "value" : "EDQM"
                }
              ],
              "product" : [
                {
                  "property" : "MedicationRequest.dosageInstruction.route.coding.system",
                  "value" : "http://standardterms.edqm.eu"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Voie_administration",
          "target" : [
            {
              "code" : "MedicationRequest.dosageInstruction.route.coding.code",
              "equivalence" : "equivalent",
              "comment" : "le code cible est à trouver dans le mapping Free Set CIO-DC VOIE",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Voie_administration@Phast-nomenclature",
                  "value" : "SIPh-CIO_Voie_administration"
                }
              ],
              "product" : [
                {
                  "property" : "MedicationRequest.dosageInstruction.route.coding.system",
                  "value" : "http://standardterms.edqm.eu"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Voie_administration",
          "target" : [
            {
              "code" : "MedicationRequest.dosageInstruction.route.coding.code",
              "equivalence" : "equivalent",
              "comment" : "le code cible est à trouver dans le mapping Free Set CIO-DC VOIE",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Voie_administration@Phast-nomenclature",
                  "value" : "{Absent}"
                }
              ],
              "product" : [
                {
                  "property" : "MedicationRequest.dosageInstruction.route.coding.system",
                  "value" : "http://standardterms.edqm.eu"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Voie_administration",
          "target" : [
            {
              "code" : "MedicationRequest.dosageInstruction.route.text",
              "equivalence" : "equivalent",
              "comment" : "Le code SIPh est à traduire en code EDQM si possible (le cas échéant en utilisant le mapping Free Set CIO-DC VOIE) à indiquer dans MedicationRequest.dosageInstruction.route.coding.code avec MedicationRequest.dosageInstruction.route.coding.system valorisé à http://standardterms.edqm.eu. Si ce n'est pas possible MedicationRequest.dosageInstruction.route.text peut être utilisé pour mettre le libellé de la voie d'administration",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Voie_administration@Phast-nomenclature",
                  "value" : "SIPh-Voie_administration"
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
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Lieu_administration",
          "target" : [
            {
              "code" : "MedicationRequest.dispenseRequest.performer.display",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Dispositif_associé",
          "target" : [
            {
              "code" : "MedicationRequest.supportingInformation.display",
              "equivalence" : "equal",
              "product" : [
                {
                  "property" : "MedicationRequest.supportingInformation.type",
                  "value" : "Device"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Posologie",
          "target" : [
            {
              "code" : "MedicationRequest.extension.valueMarkdown",
              "equivalence" : "equal",
              "product" : [
                {
                  "property" : "MedicationRequest.extension.url",
                  "value" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction"
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
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Dh_début_prescrite",
          "target" : [
            {
              "code" : "MedicationRequest.dosageInstruction.timing.repeat.boundsPeriod.start",
              "equivalence" : "equivalent",
              "comment" : "La date et l'heure sont à mettre au format FHIR avec offset",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Dh_début",
                  "value" : "{Absent}"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Dh_début_prescrite",
          "target" : [
            {
              "equivalence" : "disjoint",
              "comment" : "Dans le cas où l'élément Dh_début est présent, Dh_début_prescrite n'est pas mappé cf. la prescription - vue d'ensemble section Précisions sur dates et durée de prescription",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Dh_début",
                  "value" : "{Présent}"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Dh_début",
          "target" : [
            {
              "code" : "MedicationRequest.dosageInstruction.timing.repeat.boundsPeriod.start",
              "equivalence" : "equivalent",
              "comment" : "La date et l'heure sont à mettre au format FHIR avec offset"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Dh_fin_prescrite",
          "target" : [
            {
              "code" : "MedicationRequest.dosageInstruction.timing.repeat.boundsPeriod.end",
              "equivalence" : "equivalent",
              "comment" : "La date et l'heure sont à mettre au format FHIR avec offset",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Dh_fin",
                  "value" : "{Absent}"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Dh_fin_prescrite",
          "target" : [
            {
              "equivalence" : "disjoint",
              "comment" : "Dans le cas où l'élément Dh_fin est présent, Dh_finprescrite n'est pas mappé cf. la prescription - vue d'ensemble section Précisions sur dates et durée de prescription",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Dh_fin",
                  "value" : "{Présent}"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Dh_fin",
          "target" : [
            {
              "code" : "MedicationRequest.dosageInstruction.timing.repeat.boundsPeriod.end",
              "equivalence" : "equivalent",
              "comment" : "La date et l'heure sont à mettre au format FHIR avec offset"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Indication",
          "target" : [
            {
              "code" : "MedicationRequest.note.text",
              "equivalence" : "equivalent",
              "comment" : "Le texte est à préfixer par `Indication sur la ligne de prescription:`",
              "product" : [
                {
                  "property" : "MedicationRequest.note.extension.url",
                  "value" : "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medicationrequest-note-scope"
                },
                {
                  "property" : "MedicationRequest.note.extension.valueCode",
                  "value" : "LIPRESCIND"
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
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire",
          "target" : [
            {
              "code" : "MedicationRequest.note.text",
              "equivalence" : "equivalent",
              "comment" : "Le texte est à préfixer par `Commentaire sur la ligne de prescription:`",
              "product" : [
                {
                  "property" : "MedicationRequest.note.extension.url",
                  "value" : "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medicationrequest-note-scope"
                },
                {
                  "property" : "MedicationRequest.note.extension.valueCode",
                  "value" : "LIPRESCCOMM"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Rôle_auteur",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Identification_auteur/Identifiant",
          "target" : [
            {
              "code" : "MedicationRequest.note.authorReference.identifier.value",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Identification_auteur/Domaine_identification",
          "target" : [
            {
              "code" : "MedicationRequest.note.authorReference.identifier.system",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Identification_auteur/Nom_usage",
          "target" : [
            {
              "code" : "MedicationRequest.note.authorReference.display",
              "equivalence" : "relatedto",
              "comment" : "Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Identification_auteur/Prénom_usage",
          "target" : [
            {
              "code" : "MedicationRequest.note.authorReference.display",
              "equivalence" : "relatedto",
              "comment" : "Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Identification_auteur/Initiales",
          "target" : [
            {
              "code" : "MedicationRequest.note.authorReference.display",
              "equivalence" : "relatedto",
              "comment" : "Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Identification_auteur/Civilité",
          "target" : [
            {
              "code" : "MedicationRequest.note.authorReference.display",
              "equivalence" : "relatedto",
              "comment" : "Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Identification_auteur/Titre",
          "target" : [
            {
              "code" : "MedicationRequest.note.authorReference.display",
              "equivalence" : "relatedto",
              "comment" : "Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Identification_auteur/Nom_famille",
          "target" : [
            {
              "code" : "MedicationRequest.note.authorReference.display",
              "equivalence" : "relatedto",
              "comment" : "Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Identification_auteur/Prénoms",
          "target" : [
            {
              "code" : "MedicationRequest.note.authorReference.display",
              "equivalence" : "relatedto",
              "comment" : "Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Rôle_destinataire",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Identification_destinataire",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Criticité",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Texte",
          "target" : [
            {
              "code" : "MedicationRequest.note.text",
              "equivalence" : "equivalent",
              "comment" : "Le texte est à préfixer par `Commentaire sur la ligne de prescription:`",
              "product" : [
                {
                  "property" : "MedicationRequest.note.extension.url",
                  "value" : "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medicationrequest-note-scope"
                },
                {
                  "property" : "MedicationRequest.note.extension.valueCode",
                  "value" : "LIPRESCCOMM"
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
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Rang_élément_prescr",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Id_protocole_prescrit",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/GoNogo",
          "target" : [
            {
              "code" : "MedicationRequest.status",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/GoNogo",
                  "value" : "0"
                }
              ],
              "product" : [
                {
                  "property" : "MedicationRequest.status",
                  "value" : "unknown"
                },
                {
                  "property" : "MedicationRequest.intent",
                  "value" : "order"
                }
              ]
            }
          ]
        },
        {
          "target" : [
            {
              "code" : "MedicationRequest.status",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/GoNogo",
                  "value" : "1"
                }
              ],
              "product" : [
                {
                  "property" : "MedicationRequest.status",
                  "value" : "on-hold"
                },
                {
                  "property" : "MedicationRequest.intent",
                  "value" : "order"
                }
              ]
            }
          ]
        },
        {
          "target" : [
            {
              "code" : "MedicationRequest.status",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/GoNogo",
                  "value" : "2"
                }
              ],
              "product" : [
                {
                  "property" : "MedicationRequest.status",
                  "value" : "active"
                },
                {
                  "property" : "MedicationRequest.intent",
                  "value" : "order"
                }
              ]
            }
          ]
        },
        {
          "target" : [
            {
              "code" : "MedicationRequest.status",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/GoNogo",
                  "value" : "3"
                }
              ],
              "product" : [
                {
                  "property" : "MedicationRequest.status",
                  "value" : "active"
                },
                {
                  "property" : "MedicationRequest.intent",
                  "value" : "order"
                }
              ]
            }
          ]
        },
        {
          "target" : [
            {
              "code" : "MedicationRequest.status",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/GoNogo",
                  "value" : "4"
                }
              ],
              "product" : [
                {
                  "property" : "MedicationRequest.status",
                  "value" : "cancelled"
                },
                {
                  "property" : "MedicationRequest.intent",
                  "value" : "order"
                }
              ]
            }
          ]
        },
        {
          "target" : [
            {
              "code" : "MedicationRequest.status",
              "equivalence" : "equivalent",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/GoNogo",
                  "value" : "{Absent}"
                }
              ],
              "product" : [
                {
                  "property" : "MedicationRequest.status",
                  "value" : "active"
                },
                {
                  "property" : "MedicationRequest.intent",
                  "value" : "order"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Motif_attente",
          "target" : [
            {
              "code" : "MedicationRequest.statusReason.text",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Delta_dh_référence",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Conditions_application",
          "target" : [
            {
              "code" : "MedicationRequest.note.text",
              "equivalence" : "equivalent",
              "comment" : "Le texte est à préfixer par `Condition d'application sur la ligne de prescription:`",
              "product" : [
                {
                  "property" : "MedicationRequest.note.extension.url",
                  "value" : "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medicationrequest-note-scope"
                },
                {
                  "property" : "MedicationRequest.note.extension.valueCode",
                  "value" : "LIPRESCCONDAPPL"
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
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit",
          "target" : [
            {
              "code" : "MedicationRequest.medicationReference",
              "equivalence" : "relatedto",
              "comment" : "Voir les ressources concepMap PN13-FHIR-Prescmedi-medicationComp-conceptmap ou PN13-FHIR-Prescmedi-medicationNonComp-conceptmap pour le détail du mapping de cet élément"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit",
          "target" : [
            {
              "code" : "MedicationRequest.medicationCodeableConcept",
              "equivalence" : "relatedto",
              "comment" : "Si Composant_prescrit ne comporte pas d'information complémentaire à l'enregistrement du RUIM, medicationCodeableConcept peut être utilisé"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Elément_posologie",
          "target" : [
            {
              "code" : "MedicationRequest.dosageInstruction",
              "equivalence" : "relatedto",
              "comment" : "Voir la ressource concepMap PN13-FHIR-prescmed-dosageinstruction-conceptmap pour le détail du mapping de cet élément"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Protocole_prescrit_médic",
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
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Non_substituable",
          "target" : [
            {
              "code" : "MedicationRequest.substitution.allowedBoolean",
              "equivalence" : "relatedto",
              "comment" : "POINT D'ATTENTION - La logique de cet élément est inversée entre PN13 et FHIR. Ainsi Non-substituable à faux en PN13 est à traduire en substitution.allowedBoolean à vrai en FHIR. Par ailleurs, cet élément est au niveau de médicament dans PN13 et au niveau de la ligne de prescription en FHIR. En cas de médicament composé, un opérateur logique OU Inclusif est à utiliser sur les valeurs PN13: si au moins un composant d'un médicament composé est non substituable, la ligne de prescription est considérée comme non substituable et donc l'élément substitution.allowedBoolean est valorisé à faux."
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Référent_poso",
          "target" : [
            {
              "code" : "MedicationRequest.dosageInstruction.doseAndRate.extension($fr-basis-of-dose-component).valueReference",
              "equivalence" : "relatedto",
              "comment" : "Porte la référence à la ressource Medication traduisant l'élément Composant_prescrit de PN13 pour lequel Référent_poso est vrai"
            }
          ]
        }
      ]
    }
  ]
}

```
