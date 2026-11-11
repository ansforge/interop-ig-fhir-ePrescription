# Accueil - Guide d'implémentation de la ePrescription v1.1.0-ballot

## Accueil

Ce guide d'implémentation (IG) a pour vocation à spécifier l'interopérabilité de la [ePrescription médicamenteuse](prescription-Intro.md) en FHIR pour l'écosystème français.

### Guide de lecture

**👤 Professionnels de santé et chefs de projet métier**
* Consultez la section [Introduction professionnels de santé](#introduction-destinée-aux-professionnels-de-santé) ci-dessous
* Explorez les [cas d'usage](prescription-CasUsage.md) pour comprendre les scénarios couverts
* Parcourez les [exemples concrets](prescription-Exemples.md) basés sur les [travaux de structuration de la posologie de la HAS](https://www.has-sante.fr/jcms/p_3555137/fr/structuration-de-la-posologie-des-medicaments)

**⚙️ Développeurs et intégrateurs**
* Consultez la section [Introduction développeurs](#introduction-destinée-aux-développeurs) ci-dessous
* Accédez à la [vue d'ensemble technique](prescription-VueEnsemble.md) pour les ressources et profils FHIR impliqués, et aux [règles de modélisation](prescription-Modelisation.md) pour les règles d'implémentation détaillées
* Consultez les [spécifications de transformation PN-13](transformation-PN13-vers-FHIR.md)

### Contexte et enjeux

Le paysage français de la prescription électronique s'appuie historiquement sur plusieurs standards :

* **PN-13** : standard de type "message" pour les flux intra-hospitaliers de prescription
* **CDA ePrescription** : format documentaire pour la prescription de médicaments et dispositifs médicaux (DM)
* Les spécifications européennes émergentes dans le cadre de l'Espace Européen des Données de Santé (EEDS)

> **Périmètre de cet IG** : Ce guide couvre uniquement la **prescription médicamenteuse**. La prescription de dispositifs médicaux (DM), couverte par le CDA ePrescription, fera l'objet de travaux ultérieurs afin d'atteindre l'iso-fonctionnalité avec le CDA.

#### Objectifs de convergence

Ce guide d'implémentation s'inscrit dans une démarche de convergence des travaux nationaux et européens visant à :

* **Uniformiser l'interopérabilité** de la prescription en rassemblant les différentes approches (flux API REST et documents) au sein d'un IG unique
* **Assurer la compatibilité** avec les standards internationaux (HL7 International, HL7 Europe, IHE, Xt-EHR)
* **S'harmoniser** avec les travaux de [structuration de la posologie](https://www.has-sante.fr/jcms/p_3555137/fr/structuration-de-la-posologie-des-medicaments) de la Haute Autorité de Santé (HAS)
* **Faciliter la transition** depuis les standards existants (PN-13, CDA) vers FHIR

Cette convergence est le fruit d'une collaboration étroite entre l'ANS, Interop'Santé, la HAS, les entreprises du numérique en santé et les professionnels de santé, avec un alignement sur les orientations européennes.

### Introduction destinée aux professionnels de santé

**👤 Vous êtes professionnel de santé ou chef de projet métier ?**

Cette section vous présente les enjeux, les bénéfices et les acteurs concernés par la prescription électronique.

La prescription électronique est un enjeu majeur pour la qualité et la sécurité des soins. Elle permet de :

* **Réduire les erreurs médicamenteuses** liées à la lisibilité ou à l'interprétation des prescriptions
* **Améliorer la continuité des soins** en facilitant le partage d'informations entre professionnels (médecins, pharmaciens, infirmiers)
* **Optimiser la prise en charge** grâce à une meilleure traçabilité du parcours médicamenteux
* **Faciliter la conciliation médicamenteuse** lors des transitions de soins (ville-hôpital, inter-établissements)
* **Favoriser la recherche clinique et épidémiologique** en rendant disponibles des données structurées de prescription pour l'analyse et l'amélioration des pratiques

#### À qui s'adresse ce guide ?

Ce guide concerne l'ensemble des acteurs impliqués dans le circuit du médicament :

* **Médecins prescripteurs** (médecine de ville, hospitaliers, spécialistes)
* **Pharmaciens** (officine, hospitaliers)
* **Infirmiers** et autres professionnels paramédicaux
* **Établissements de santé** et leurs systèmes d'information
* **Éditeurs de logiciels** développant des solutions de prescription et de dispensation

#### Conformité et structuration de la posologie

Aujourd'hui, la posologie est souvent rédigée en **texte libre** (ex. : **"1 comprimé matin et soir pendant 5 jours"**). Si ce format est naturel pour le prescripteur, il reste difficile à exploiter automatiquement : un système informatique ne peut pas « lire » une instruction libre pour déclencher une alerte, calculer une dose ou assurer une continuité de soins.

La **donnée structurée** consiste à exprimer ces mêmes informations dans un format normalisé et compréhensible par les logiciels : dose, unité, fréquence, voie d'administration, durée… chacun encodé séparément. Cela ouvre la voie aux **contrôles automatiques** (interactions, allergies, surdosages), à la **continuité numérique** entre ville et hôpital, et à l'exploitation des données à des fins de santé publique.

Le guide intègre les recommandations de la [HAS pour la structuration de la posologie](https://www.has-sante.fr/jcms/p_3555137/fr/structuration-de-la-posologie-des-medicaments), ayant pour objectif :

* Une **expression standardisée** de la posologie (dose, fréquence, durée, …)
* Une **interprétation uniforme** par les différents acteurs du circuit
* Une **compatibilité** avec les outils d'aide à la prescription et à la dispensation

Pour en savoir plus sur l'interopérabilité en général, une documentation spécifique aux professionnels de santé est accessible [ici](https://interop.esante.gouv.fr/ig/documentation/doc_ps.html).

### Introduction destinée aux développeurs

**⚙️ Vous êtes développeur ou intégrateur ?**

Cette section détaille la structure technique du guide, les profils FHIR et les transformations PN-13.

Ce guide d'implémentation spécifie comment utiliser les ressources FHIR internationales (MedicationRequest, Medication, …) pour un usage national français.

#### Structure du guide

L'IG intègre plusieurs volets complémentaires :

* **Profils FHIR génériques** : définition des profils autour de la ePrescription avec de nombreux exemples, utilisables dans différents contextes (API REST, documents, messages). Ces profils constituent une base nationale commune pour tous les acteurs travaillant sur la prescription électronique en FHIR.
* **Transformation PN-13** : spécifications pour [passer des flux PN-13 aux ressources FHIR](transformation-PN13-vers-FHIR.md) et inversement, garantissant l'interopérabilité avec les systèmes existants.
* **Volet documentaire** : le guide intégrera ultérieurement une partie document (Bundle de type Document) pour rassembler les lignes de prescription sous forme d'ordonnance complète.

### Auteurs

Ce domaine est pris en charge par le [GT pharmacie](https://groups.google.com/g/pn13-is---interopsante) d'HL7 France au sein de l'association [Interop’Santé](https://www.interopsante.org) après une première version développée au sein de la communauté SIPh. L'historique des versions et des travaux est détaillé dans la page de [suivi des travaux](suivitravaux.md).

#### Dépendances







#### Propriété intellectuelle

Certaines ressources sémantiques de ce guide sont protégées par des droits de propriété intellectuelle couverte par les déclarations ci-dessous. L’utilisation de ces ressources est soumise à l’acceptation et au respect des conditions précisées dans la licence d’utilisation de chacune d’entre elle.

* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.0.2/CodeSystem-ISO3166Part1.html): [FRInpatientMedicationCodes](ValueSet-fr-inpatient-medication-code.md), [FRInpatientMedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)... Show 51 more, [FRMPSubstance](StructureDefinition-fr-mp-substance.md), [FRMedication](StructureDefinition-fr-medication.md), [FRMedicationCodes](ValueSet-fr-medication-code.md), [FRMedicationNonCompound](StructureDefinition-fr-medication-noncompound.md), [FRMedicationRequest](StructureDefinition-fr-medicationrequest.md), [FRMedicationRequestNoteScope](StructureDefinition-fr-medicationrequest-note-scope.md), [FRObservationForPrescription](StructureDefinition-fr-observation-for-prescription.md), [FRPrescriptionBundleForExample](StructureDefinition-fr-prescription-bundle-for-example.md), [FRRequestGroupForPrescription](StructureDefinition-fr-requestgroup-for-prescription.md), [FrAdditionalActionRelationship](StructureDefinition-fr-additional-action-relationship.md), [FrAdditionalActionRelationshipType](CodeSystem-fr-additional-action-relationship-type.md), [FrAdditionalRequestGroupRelationshipValueSet](ValueSet-fr-additional-action-relationship-type-value-set.md), [FrAdditionalWhenCodesCodeSystem](CodeSystem-fr-additional-when-codes-cs.md), [FrAdditionalWhenCodesValueSet](ValueSet-fr-additional-when-codes-vs.md), [FrAdditionalWhenValues](StructureDefinition-fr-additional-when-values.md), [FrBasisOfDoseComponent](StructureDefinition-fr-basis-of-dose-component.md), [FrDrugCharacteristic](StructureDefinition-fr-drug-characteristic.md), [FrIsVehicle](StructureDefinition-fr-is-vehicle.md), [FrMedicationCompound](StructureDefinition-fr-medication-compound.md), [FrMethodOfAdministration](ValueSet-FrMethodOfAdministration.md), [FrMpDoseForm](ValueSet-fr-mp-dose-form.md), [FrNoteScopeCodeValueSet](ValueSet-fr-note-scope-codes-vs.md), [FrNoteScopeCodes](CodeSystem-fr-note-scope-codes.md), [FrPN13FHIRFreeSetCIODCFormeConceptMap](ConceptMap-PN13-FHIR-FreeSetCIODC-Forme-ConceptMap.md), [FrPN13FHIRFreeSetCIODCUniteConceptMap](ConceptMap-PN13-FHIR-FreeSetCIODC-Unite-ConceptMap.md), [FrPN13FHIRFreeSetCIODCVoieConceptMap](ConceptMap-PN13-FHIR-FreeSetCIODC-Voie-ConceptMap.md), [FrPN13FHIRGenderConceptMap](ConceptMap-PN13-FHIR-gender-conceptmap.md), [FrPN13FHIRMedicationNonCompoundConceptMap](ConceptMap-PN13-FHIR-prescmed-medicationnoncompound-conceptmap.md), [FrPN13FHIRMedicationPrescriptionDosageInstructiontConceptMap](ConceptMap-PN13-FHIR-prescmed-dosageinstruction-conceptmap.md), [FrPN13FHIRMedicationPrescriptionEncounterConceptMap](ConceptMap-PN13-FHIR-prescmed-encounter-conceptmap.md), [FrPN13FHIRMedicationPrescriptionMedicationCompConceptMap](ConceptMap-PN13-FHIR-prescmed-medicationcomp-conceptmap.md), [FrPN13FHIRMedicationPrescriptionMedicationRequestConceptMap](ConceptMap-PN13-FHIR-prescmed-medicationrequest-conceptmap.md), [FrPN13FHIRMedicationPrescriptionPatientINSConceptMap](ConceptMap-PN13-FHIR-prescmed-patient-avec-INS-conceptmap.md), [FrPN13FHIRMedicationPrescriptionPatientIdSeulConceptMap](ConceptMap-PN13-FHIR-prescmed-patient-id-seul-conceptmap.md), [FrPN13FHIRMedicationPrescriptionPatientSansINSConceptMap](ConceptMap-PN13-FHIR-prescmed-patient-sans-INS-conceptmap.md), [FrPN13FHIRMedicationPrescriptionPractitionerIdSeulConceptMap](ConceptMap-PN13-FHIR-prescmed-practitioner-id-seul-conceptmap.md), [FrPN13FHIRMedicationPrescriptionPractitionerIdentiteConceptMap](ConceptMap-PN13-FHIR-prescmed-practitioner-identite-conceptmap.md), [FrPN13FHIRObservationConceptMap](ConceptMap-PN13-FHIR-observation-conceptmap.md), [FrRangeMedication](StructureDefinition-FrRangeMedication.md), [FrRatioMedication](StructureDefinition-FrRatioMedication.md), [FrRouteOfAdministration](ValueSet-fr-route-of-administration.md), [FrSimpleQuantityMedication](StructureDefinition-FrSimpleQuantityMedication.md), [FrSubstanceCode](ValueSet-fr-substance-code.md), [FrTeatmentIntent](StructureDefinition-fr-treatment-intent.md), [FrTreatmentIntent](ValueSet-fr-treatment-intent.md), [FrUFRole](StructureDefinition-fr-uf-role.md), [FrUFRoleCodes](CodeSystem-fr-uf-role-codes.md), [FrUfRoleCodesForPrescriptionValueSet](ValueSet-fr-uf-role-code-for-prescription.md), [LignePrescription](StructureDefinition-fr-ligne-prescription.md), [Posologie](StructureDefinition-fr-posologie.md) and [eP](index.md)


* The UCUM codes, UCUM table (regardless of format), and UCUM Specification are copyright 1999-2009, Regenstrief Institute, Inc. and the Unified Codes for Units of Measures (UCUM) Organization. All rights reserved. [https://ucum.org/trac/wiki/TermsOfUse](https://ucum.org/trac/wiki/TermsOfUse)

* [Unified Code for Units of Measure (UCUM)](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/CodeSystem-v3-ucum.html): [Bundle/HAS-01-Presc-Pantoprazole-DC](Bundle-HAS-01-Presc-Pantoprazole-DC.md), [Bundle/HAS-01-Presc-Pantoprazole-MV](Bundle-HAS-01-Presc-Pantoprazole-MV.md)... Show 44 more, [Bundle/HAS-04b-Presc-DAFALGANCODEINE](Bundle-HAS-04b-Presc-DAFALGANCODEINE.md), [Bundle/HAS-05b-Presc-ACTISKENAN](Bundle-HAS-05b-Presc-ACTISKENAN.md), [Bundle/HAS-06-2-Presc-Methotrexate](Bundle-HAS-06-2-Presc-Methotrexate.md), [Bundle/HAS-07-Presc-Paracetamol](Bundle-HAS-07-Presc-Paracetamol.md), [Bundle/HAS-12-2-Presc-Methotrexate](Bundle-HAS-12-2-Presc-Methotrexate.md), [Bundle/HAS-12-3-Presc-Enoxaparine](Bundle-HAS-12-3-Presc-Enoxaparine.md), [Bundle/HAS-14-1-Presc-CODOLIPRANE](Bundle-HAS-14-1-Presc-CODOLIPRANE.md), [Bundle/HAS-14-2-Presc-Betamethasone](Bundle-HAS-14-2-Presc-Betamethasone.md), [Bundle/HAS-17-Presc-Budesonide](Bundle-HAS-17-Presc-Budesonide.md), [Bundle/HAS-18-Presc-Budesonide-MV](Bundle-HAS-18-Presc-Budesonide-MV.md), [Bundle/HAS-19-Presc-Paracetamol](Bundle-HAS-19-Presc-Paracetamol.md), [Bundle/HAS-20-Presc-Hydrocortisone](Bundle-HAS-20-Presc-Hydrocortisone.md), [Bundle/HAS-21-Presc-Prednisolone](Bundle-HAS-21-Presc-Prednisolone.md), [Bundle/HAS-22-Presc-Prednisolone](Bundle-HAS-22-Presc-Prednisolone.md), [Bundle/HAS-30-1-Presc-Hydrocortisone](Bundle-HAS-30-1-Presc-Hydrocortisone.md), [Bundle/MultiLine-Presc-Sucralfate-Paracetamol](Bundle-MultiLine-Presc-Sucralfate-Paracetamol.md), [Bundle/Presc-Betamethasone-ApplCut](Bundle-Presc-Betamethasone-ApplCut.md), [Bundle/Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin](Bundle-Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin.md), [Bundle/Presc-Capecitabine-Dose-Calculee](Bundle-Presc-Capecitabine-Dose-Calculee.md), [Bundle/Presc-DIPROSONE-AppCut](Bundle-Presc-DIPROSONE-AppCut.md), [Bundle/Presc-DOLIPRANE-20DoseParKG](Bundle-Presc-DOLIPRANE-20DoseParKG.md), [Bundle/Presc-EFFERALGAN](Bundle-Presc-EFFERALGAN.md), [Bundle/Presc-Fentanyl-patch72h-TL3j](Bundle-Presc-Fentanyl-patch72h-TL3j.md), [Bundle/Presc-MATRIFEN-patch-TL72h](Bundle-Presc-MATRIFEN-patch-TL72h.md), [Bundle/Presc-MV-PerfGl-NaCl-KCl](Bundle-Presc-MV-PerfGl-NaCl-KCl.md), [Bundle/Presc-Methylpredinosolone-DosesEvolutives](Bundle-Presc-Methylpredinosolone-DosesEvolutives.md), [Bundle/Presc-MiniperfCefotaxime-En20min-Pdt3j](Bundle-Presc-MiniperfCefotaxime-En20min-Pdt3j.md), [Bundle/Presc-MiniperfCefotaxime-En20min-Pdt4j](Bundle-Presc-MiniperfCefotaxime-En20min-Pdt4j.md), [Bundle/Presc-NICORETTESKIN-patch](Bundle-Presc-NICORETTESKIN-patch.md), [Bundle/Presc-Nicotine-15mgPar16h](Bundle-Presc-Nicotine-15mgPar16h.md), [Bundle/Presc-Paracetamol](Bundle-Presc-Paracetamol.md), [Bundle/Presc-Paracetamol-DoseEvolutive](Bundle-Presc-Paracetamol-DoseEvolutive.md), [Bundle/Presc-Paracetamol-SiDouleur-MaxPrise-DelaisMin](Bundle-Presc-Paracetamol-SiDouleur-MaxPrise-DelaisMin.md), [Bundle/Presc-Paracetamol-TL6h](Bundle-Presc-Paracetamol-TL6h.md), [Bundle/Presc-ParacetamolCodeine-500mg30mg](Bundle-Presc-ParacetamolCodeine-500mg30mg.md), [Bundle/Presc-PerfDobutamine-Qsp40mL](Bundle-Presc-PerfDobutamine-Qsp40mL.md), [Bundle/Presc-PerfGl-NaCl-KCl-1l](Bundle-Presc-PerfGl-NaCl-KCl-1l.md), [Bundle/Presc-PerfGl-NaCl-KCl-500ml](Bundle-Presc-PerfGl-NaCl-KCl-500ml.md), [Bundle/Presc-SolPrPerf-BIONOLYTE-G5-500mL-Sur12h](Bundle-Presc-SolPrPerf-BIONOLYTE-G5-500mL-Sur12h.md), [Bundle/TradPN13FHIR-Presc-Morphine-PCA](Bundle-TradPN13FHIR-Presc-Morphine-PCA.md), [Bundle/TradPN13FHIR-Presc-Paracetamol](Bundle-TradPN13FHIR-Presc-Paracetamol.md), [Bundle/TradPN13FHIR-Presc-Paracetamol-SiDouleur](Bundle-TradPN13FHIR-Presc-Paracetamol-SiDouleur.md), [Bundle/TradPN13FHIR-Presc-perfusion-6-composants](Bundle-TradPN13FHIR-Presc-perfusion-6-composants.md) and [Posologie](StructureDefinition-fr-posologie.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.0.2/CodeSystem-v3-loinc.html): [Bundle/TradPN13FHIR-Presc-Paracetamol](Bundle-TradPN13FHIR-Presc-Paracetamol.md), [Bundle/TradPN13FHIR-Presc-Paracetamol-SiDouleur](Bundle-TradPN13FHIR-Presc-Paracetamol-SiDouleur.md) and [Bundle/TradPN13FHIR-Presc-perfusion-6-composants](Bundle-TradPN13FHIR-Presc-perfusion-6-composants.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [Bundle/HAS-04a-Presc-Paracetamol](Bundle-HAS-04a-Presc-Paracetamol.md), [Bundle/HAS-07-Presc-Paracetamol](Bundle-HAS-07-Presc-Paracetamol.md)... Show 7 more, [Bundle/HAS-14-1-Presc-CODOLIPRANE](Bundle-HAS-14-1-Presc-CODOLIPRANE.md), [Bundle/HAS-26-Diazepam](Bundle-HAS-26-Diazepam.md), [Bundle/Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin](Bundle-Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin.md), [Bundle/Presc-Paracetamol-SiDouleur-MaxPrise-DelaisMin](Bundle-Presc-Paracetamol-SiDouleur-MaxPrise-DelaisMin.md), [Bundle/Presc-PerfGl-NaCl-KCl-1l](Bundle-Presc-PerfGl-NaCl-KCl-1l.md), [FrTeatmentIntent](StructureDefinition-fr-treatment-intent.md) and [FrTreatmentIntent](ValueSet-fr-treatment-intent.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [DoseAndRateType](http://terminology.hl7.org/7.2.0/CodeSystem-dose-rate-type.html): [Bundle/Presc-CODOLIPRANE-MedCodeableConcept](Bundle-Presc-CODOLIPRANE-MedCodeableConcept.md), [Bundle/Presc-Capecitabine-Dose-Calculee](Bundle-Presc-Capecitabine-Dose-Calculee.md)... Show 5 more, [Bundle/Presc-DIPROSONE-AppCut](Bundle-Presc-DIPROSONE-AppCut.md), [Bundle/Presc-DOLIPRANE-20DoseParKG](Bundle-Presc-DOLIPRANE-20DoseParKG.md), [Bundle/Presc-EFFERALGAN](Bundle-Presc-EFFERALGAN.md), [Bundle/Presc-NICORETTESKIN-patch](Bundle-Presc-NICORETTESKIN-patch.md) and [Bundle/Presc-SolPrPerf-BIONOLYTE-G5-500mL-Sur12h](Bundle-Presc-SolPrPerf-BIONOLYTE-G5-500mL-Sur12h.md)
* [MedicationKnowledge Characteristic Codes](http://terminology.hl7.org/7.2.0/CodeSystem-medicationknowledge-characteristic.html): [FrDrugCharacteristic](StructureDefinition-fr-drug-characteristic.md)
* [Observation Category Codes](http://terminology.hl7.org/7.2.0/CodeSystem-observation-category.html): [Bundle/TradPN13FHIR-Presc-Paracetamol](Bundle-TradPN13FHIR-Presc-Paracetamol.md), [Bundle/TradPN13FHIR-Presc-Paracetamol-SiDouleur](Bundle-TradPN13FHIR-Presc-Paracetamol-SiDouleur.md) and [Bundle/TradPN13FHIR-Presc-perfusion-6-composants](Bundle-TradPN13FHIR-Presc-perfusion-6-composants.md)
* [identifierType](http://terminology.hl7.org/7.2.0/CodeSystem-v2-0203.html): [Bundle/TradPN13FHIR-Presc-Paracetamol](Bundle-TradPN13FHIR-Presc-Paracetamol.md), [Bundle/TradPN13FHIR-Presc-Paracetamol-SiDouleur](Bundle-TradPN13FHIR-Presc-Paracetamol-SiDouleur.md) and [Bundle/TradPN13FHIR-Presc-perfusion-6-composants](Bundle-TradPN13FHIR-Presc-perfusion-6-composants.md)


* Unless otherwise indicated, reproduction of material posted on Council of Europe websites, and reproduction of photographs for which the Council of Europe holds copyright – see legal notice \“photo credits\” – is authorised for private use and for informational and educational uses relating to the Council of Europe’s work. This authorisation is subject to the condition that the source be indicated and no charge made for reproduction. Persons wishing to make some other use than those specified above, including commercial use, of information and text posted on these sites are asked to apply for prior written authorisation to the Council of Europe, Directorate of Communication.

* [EDQM Standard Terms](http://tx.fhir.org/r4/ValueSet/edqm): [Bundle/HAS-01-Presc-Pantoprazole-DC](Bundle-HAS-01-Presc-Pantoprazole-DC.md), [Bundle/HAS-02-Presc-Fluindione](Bundle-HAS-02-Presc-Fluindione.md)... Show 75 more, [Bundle/HAS-03-Presc-INNOHEP](Bundle-HAS-03-Presc-INNOHEP.md), [Bundle/HAS-04a-Presc-Paracetamol](Bundle-HAS-04a-Presc-Paracetamol.md), [Bundle/HAS-04b-Presc-DAFALGANCODEINE](Bundle-HAS-04b-Presc-DAFALGANCODEINE.md), [Bundle/HAS-05a-Presc-Fluindione](Bundle-HAS-05a-Presc-Fluindione.md), [Bundle/HAS-06-1-Presc-Methotrexate](Bundle-HAS-06-1-Presc-Methotrexate.md), [Bundle/HAS-09-Presc-Ropinirole](Bundle-HAS-09-Presc-Ropinirole.md), [Bundle/HAS-10-Presc-Methotrexate](Bundle-HAS-10-Presc-Methotrexate.md), [Bundle/HAS-11-1-Presc-VitamineD](Bundle-HAS-11-1-Presc-VitamineD.md), [Bundle/HAS-11-2-Presc-EVRA](Bundle-HAS-11-2-Presc-EVRA.md), [Bundle/HAS-12-3-Presc-Enoxaparine](Bundle-HAS-12-3-Presc-Enoxaparine.md), [Bundle/HAS-13-Presc-Desloratadine](Bundle-HAS-13-Presc-Desloratadine.md), [Bundle/HAS-14-1-Presc-CODOLIPRANE](Bundle-HAS-14-1-Presc-CODOLIPRANE.md), [Bundle/HAS-15-Presc-Morphine](Bundle-HAS-15-Presc-Morphine.md), [Bundle/HAS-16-Presc-Racecadotril](Bundle-HAS-16-Presc-Racecadotril.md), [Bundle/HAS-19-Presc-Paracetamol](Bundle-HAS-19-Presc-Paracetamol.md), [Bundle/HAS-23-1-Presc-Fluindione](Bundle-HAS-23-1-Presc-Fluindione.md), [Bundle/HAS-23-2-Presc-Amiodarone](Bundle-HAS-23-2-Presc-Amiodarone.md), [Bundle/HAS-24-1-presc-Doxycyline](Bundle-HAS-24-1-presc-Doxycyline.md), [Bundle/HAS-24-1-presc-Topiramate](Bundle-HAS-24-1-presc-Topiramate.md), [Bundle/HAS-26-Diazepam](Bundle-HAS-26-Diazepam.md), [Bundle/HAS-27-1-presc-GLUCOPHAGE](Bundle-HAS-27-1-presc-GLUCOPHAGE.md), [Bundle/HAS-27-2-presc-Rifampicine](Bundle-HAS-27-2-presc-Rifampicine.md), [Bundle/HAS-28-Presc-LOVENOX](Bundle-HAS-28-Presc-LOVENOX.md), [Bundle/HAS-29-Presc-LOVENOX](Bundle-HAS-29-Presc-LOVENOX.md), [Bundle/HAS-30-1-Presc-Hydrocortisone](Bundle-HAS-30-1-Presc-Hydrocortisone.md), [Bundle/HAS-30-2-Presc-Cetirizine](Bundle-HAS-30-2-Presc-Cetirizine.md), [Bundle/HAS-31-Presc-DUROGESIC](Bundle-HAS-31-Presc-DUROGESIC.md), [Bundle/HAS-32-1-Presc-LOVENOX](Bundle-HAS-32-1-Presc-LOVENOX.md), [Bundle/HAS-32-2-Presc-ULTIBRO-BREEZ](Bundle-HAS-32-2-Presc-ULTIBRO-BREEZ.md), [Bundle/HAS-33-Presc-VERSATIS](Bundle-HAS-33-Presc-VERSATIS.md), [Bundle/MultiLine-Presc-METFORMINE-GLICLAZIDE](Bundle-MultiLine-Presc-METFORMINE-GLICLAZIDE.md), [Bundle/MultiLine-Presc-METHOTREXATE-LEDERFOLINE](Bundle-MultiLine-Presc-METHOTREXATE-LEDERFOLINE.md), [Bundle/MultiLine-Presc-Sucralfate-Paracetamol](Bundle-MultiLine-Presc-Sucralfate-Paracetamol.md), [Bundle/Presc-BISOPROLOL-SANDOZ-DosesRationnelles](Bundle-Presc-BISOPROLOL-SANDOZ-DosesRationnelles.md), [Bundle/Presc-Betamethasone-ApplCut](Bundle-Presc-Betamethasone-ApplCut.md), [Bundle/Presc-CLARADOL-DoseDiffParHoraire](Bundle-Presc-CLARADOL-DoseDiffParHoraire.md), [Bundle/Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin](Bundle-Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin.md), [Bundle/Presc-CLARADOL-TL6h-MedCodeableConcept](Bundle-Presc-CLARADOL-TL6h-MedCodeableConcept.md), [Bundle/Presc-CLARADOL-TLMardisVendredis](Bundle-Presc-CLARADOL-TLMardisVendredis.md), [Bundle/Presc-CODOLIPRANE-MedCodeableConcept](Bundle-Presc-CODOLIPRANE-MedCodeableConcept.md), [Bundle/Presc-Capecitabine-Dose-Calculee](Bundle-Presc-Capecitabine-Dose-Calculee.md), [Bundle/Presc-DIPROSONE-AppCut](Bundle-Presc-DIPROSONE-AppCut.md), [Bundle/Presc-DOLIPRANE-20DoseParKG](Bundle-Presc-DOLIPRANE-20DoseParKG.md), [Bundle/Presc-EFFERALGAN](Bundle-Presc-EFFERALGAN.md), [Bundle/Presc-Fentanyl-patch72h-TL3j](Bundle-Presc-Fentanyl-patch72h-TL3j.md), [Bundle/Presc-MATRIFEN-patch-TL72h](Bundle-Presc-MATRIFEN-patch-TL72h.md), [Bundle/Presc-MV-PerfGl-NaCl-KCl](Bundle-Presc-MV-PerfGl-NaCl-KCl.md), [Bundle/Presc-Methylpredinosolone-DosesEvolutives](Bundle-Presc-Methylpredinosolone-DosesEvolutives.md), [Bundle/Presc-MiniperfCefotaxime-En20min-Pdt3j](Bundle-Presc-MiniperfCefotaxime-En20min-Pdt3j.md), [Bundle/Presc-MiniperfCefotaxime-En20min-Pdt4j](Bundle-Presc-MiniperfCefotaxime-En20min-Pdt4j.md), [Bundle/Presc-NICORETTESKIN-patch](Bundle-Presc-NICORETTESKIN-patch.md), [Bundle/Presc-Nicotine-15mgPar16h](Bundle-Presc-Nicotine-15mgPar16h.md), [Bundle/Presc-Paracetamol](Bundle-Presc-Paracetamol.md), [Bundle/Presc-Paracetamol-DoseEvolutive](Bundle-Presc-Paracetamol-DoseEvolutive.md), [Bundle/Presc-Paracetamol-SiDouleur-MaxPrise-DelaisMin](Bundle-Presc-Paracetamol-SiDouleur-MaxPrise-DelaisMin.md), [Bundle/Presc-Paracetamol-TL6h](Bundle-Presc-Paracetamol-TL6h.md), [Bundle/Presc-ParacetamolCodeine-500mg30mg](Bundle-Presc-ParacetamolCodeine-500mg30mg.md), [Bundle/Presc-PerfDobutamine-Qsp40mL](Bundle-Presc-PerfDobutamine-Qsp40mL.md), [Bundle/Presc-PerfGl-NaCl-KCl-1l](Bundle-Presc-PerfGl-NaCl-KCl-1l.md), [Bundle/Presc-PerfGl-NaCl-KCl-500ml](Bundle-Presc-PerfGl-NaCl-KCl-500ml.md), [Bundle/Presc-SolPrPerf-BIONOLYTE-G5-500mL-Sur12h](Bundle-Presc-SolPrPerf-BIONOLYTE-G5-500mL-Sur12h.md), [Bundle/TradPN13FHIR-MultiLine-Presc-Alt-METFORMINE-GLICLAZIDE](Bundle-TradPN13FHIR-MultiLine-Presc-Alt-METFORMINE-GLICLAZIDE.md), [Bundle/TradPN13FHIR-Presc-DOLIPRANE](Bundle-TradPN13FHIR-Presc-DOLIPRANE.md), [Bundle/TradPN13FHIR-Presc-DOLIPRANE-Interpret](Bundle-TradPN13FHIR-Presc-DOLIPRANE-Interpret.md), [Bundle/TradPN13FHIR-Presc-Morphine-PCA](Bundle-TradPN13FHIR-Presc-Morphine-PCA.md), [Bundle/TradPN13FHIR-Presc-Paracetamol](Bundle-TradPN13FHIR-Presc-Paracetamol.md), [Bundle/TradPN13FHIR-Presc-Paracetamol-SiDouleur](Bundle-TradPN13FHIR-Presc-Paracetamol-SiDouleur.md), [Bundle/TradPN13FHIR-Presc-perfusion-6-composants](Bundle-TradPN13FHIR-Presc-perfusion-6-composants.md), [FRMedicationNonCompound](StructureDefinition-fr-medication-noncompound.md), [FRMedicationRequest](StructureDefinition-fr-medicationrequest.md), [FrMedicationCompound](StructureDefinition-fr-medication-compound.md), [FrMethodOfAdministration](ValueSet-FrMethodOfAdministration.md), [FrMpDoseForm](ValueSet-fr-mp-dose-form.md), [FrRouteOfAdministration](ValueSet-fr-route-of-administration.md) and [Posologie](StructureDefinition-fr-posologie.md)


