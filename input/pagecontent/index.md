{% if site.data.info.releaselabel == 'ci-build' %}
  <div style="width: 65%">
      <blockquote class="stu-note">
      <p>
      <b>Attention !</b> Ce guide d'implémentation n'est pas en version courante. La version courante sera accessible via l'URL canonique (https://interop.esante.gouv.fr/ig/fhir/eprescription) lorsque celui-ci sera publié.
      </p>
      </blockquote>
  </div>
{% endif %}

Ce guide d'implémentation (IG) a pour vocation à spécifier l'interopérabilité de la [ePrescription](prescription-Intro.html) en FHIR pour l'écosystème français de santé.

### Contexte et enjeux

#### Situation actuelle

Le paysage français de la prescription électronique s'appuie historiquement sur plusieurs standards :

- **PN-13** : standard de type "message" pour les flux intra-hospitaliers de prescription
- **CDA ePrescription** : format documentaire pour la prescription de médicaments et dispositifs médicaux
- Les spécifications européennes émergentes dans le cadre de l'Espace Européen des Données de Santé (EEDS)

#### Objectifs de convergence

Ce guide d'implémentation s'inscrit dans une démarche de convergence des travaux nationaux et européens visant à :

- **Uniformiser l'interopérabilité** de la prescription en rassemblant les différentes approches (flux API REST et documents) au sein d'un IG unique
- **Assurer la compatibilité** avec les standards internationaux (HL7 International, IHE MPD, eHealth Network)
- **S'harmoniser** avec les travaux de structuration de la posologie de la Haute Autorité de Santé (HAS)
- **Faciliter la transition** depuis les standards existants (PN-13, CDA) vers FHIR

Cette convergence est le fruit d'une collaboration étroite entre l'ANS, Interop'Santé, les industriels et les professionnels de santé, avec un alignement sur les orientations européennes.

### Introduction métier (i.e. professionnels de santé)

Une documentation spécifique aux professionnels de santé est accessible [ici](https://ansforge.github.io/IG-documentation/nr-add-ps-doc/ig/doc_ps.html)
<!-- TODO mettre à jour le lien avec la version publiée -->

### Introduction développeurs

Ce guide d'implémentation spécifie comment utiliser les ressources FHIR internationales (MedicationRequest, Medication, ...) pour un usage national français.

#### Fondements et alignements

L'IG s'appuie sur :

- Le **standard PN-13** pour la continuité avec les systèmes existants
- La **structuration de la posologie** définie par la Haute Autorité de Santé (HAS)
- Les **spécifications européennes** (Xt-EHR 6.2, profils MPD d'HL7 et IHE Europe)
- Les **travaux d'Interop'Santé** pour la transition de PN-13 vers FHIR

#### Structure du guide

L'IG intègre plusieurs volets complémentaires :

- **Profils FHIR génériques** : définition des profils autour de la ePrescription avec de nombreux exemples, utilisables dans différents contextes (API REST, documents, messages). Ces profils constituent une base nationale commune pour tous les acteurs travaillant sur la prescription électronique en FHIR.
- **Transformation PN-13** : spécifications pour [passer des flux PN-13 aux ressources FHIR](transformation-PN13-vers-FHIR.html) et inversement, garantissant l'interopérabilité avec les systèmes existants.
- **Volet documentaire** : le guide intégrera ultérieurement une partie document (Bundle de type Document) pour rassembler les lignes de prescription sous forme d'ordonnance complète.

### Auteurs

Ce domaine est pris en charge par le [GT pharmacie](https://groups.google.com/g/pn13-is---interopsante) d'HL7 France au sein de l'association [Interop’Santé](https://www.interopsante.org) après une première version développée au sein de la communauté SIPh.

<div class="figure" style="width:20%;">
    <img style="height: auto; width: 100%;" src="LOGO_IS.png" alt="LOGO-IS" title="Logo IS">
</div>

L'historique des versions et des travaux est détaillé dans la page de [suivi des travaux](suivitravaux.html).

#### Dépendances

{% include dependency-table.xhtml %}

#### Propriété intellectuelle

{% include ip-statements.xhtml %}
