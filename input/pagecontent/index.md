{% if site.data.info.releaselabel == 'ci-build' %}
  <div style="width: 65%">
      <blockquote class="stu-note">
      <p>
      <b>Attention !</b> Ce guide d'implémentation n'est pas en version courante. La version courante sera accessible via l'URL canonique (https://interop.esante.gouv.fr/ig/fhir/eprescription) lorsque celui-ci sera publié.
      </p>
      </blockquote>
  </div>
{% endif %}

Ce guide d'implémentation (IG) a pour vocation à spécifier l'interopérabilité de la [ePrescription](prescription-Intro.html) en FHIR pour l'écosystème français.

### Guide de lecture

<div style="background-color: #e8f4f8; border-left: 4px solid #0077be; padding: 15px; margin: 20px 0;">
<strong>👤 Professionnels de santé et chefs de projet métier</strong>
<ul style="margin: 10px 0 0 0;">
<li>Consultez la section <a href="#introduction-destinée-aux-professionnels-de-santé">Introduction professionnels de santé</a> ci-dessous</li>
<li>Explorez les <a href="prescription-CasUsage.html">cas d'usage</a> pour comprendre les scénarios couverts</li>
<li>Parcourez les <a href="prescription-Exemples.html">exemples concrets</a> basés sur les travaux de la HAS</li>
</ul>
</div>

<div style="background-color: #f0f0f0; border-left: 4px solid #666; padding: 15px; margin: 20px 0;">
<strong>⚙️ Développeurs et intégrateurs</strong>
<ul style="margin: 10px 0 0 0;">
<li>Consultez la section <a href="#introduction-destinée-aux-développeurs">Introduction développeurs</a> ci-dessous</li>
<li>Accédez à la <a href="prescription-VueEnsemble.html">vue d'ensemble technique</a> pour la modélisation FHIR</li>
<li>Utilisez les <a href="transformation-PN13-vers-FHIR.html">spécifications de transformation PN-13</a></li>
</ul>
</div>

### Contexte et enjeux

Le paysage français de la prescription électronique s'appuie historiquement sur plusieurs standards :

- **PN-13** : standard de type "message" pour les flux intra-hospitaliers de prescription
- **CDA ePrescription** : format documentaire pour la prescription de médicaments et dispositifs médicaux
- Les spécifications européennes émergentes dans le cadre de l'Espace Européen des Données de Santé (EEDS)

#### Objectifs de convergence

Ce guide d'implémentation s'inscrit dans une démarche de convergence des travaux nationaux et européens visant à :

- **Uniformiser l'interopérabilité** de la prescription en rassemblant les différentes approches (flux API REST et documents) au sein d'un IG unique
- **Assurer la compatibilité** avec les standards internationaux (HL7 International, HL7 Europe, IHE, Xt-EHR)
- **S'harmoniser** avec les travaux de [structuration de la posologie](https://www.has-sante.fr/jcms/p_3555137/fr/structuration-de-la-posologie-des-medicaments) de la Haute Autorité de Santé (HAS)
- **Faciliter la transition** depuis les standards existants (PN-13, CDA) vers FHIR

Cette convergence est le fruit d'une collaboration étroite entre l'ANS, Interop'Santé, les entreprises du numérique en santé et les professionnels de santé, avec un alignement sur les orientations européennes.

### Introduction destinée aux professionnels de santé

<div style="background-color: #e8f4f8; border-left: 4px solid #0077be; padding: 15px; margin: 20px 0;">
<strong>👤 Vous êtes professionnel de santé ou chef de projet métier ?</strong><br/>
Cette section vous présente les enjeux, les bénéfices et les acteurs concernés par la prescription électronique.
</div>

La prescription électronique est un enjeu majeur pour la qualité et la sécurité des soins. Elle permet de :

- **Réduire les erreurs médicamenteuses** liées à la lisibilité ou à l'interprétation des prescriptions
- **Améliorer la continuité des soins** en facilitant le partage d'informations entre professionnels (médecins, pharmaciens, infirmiers)
- **Optimiser la prise en charge** grâce à une meilleure traçabilité du parcours médicamenteux
- **Faciliter la conciliation médicamenteuse** lors des transitions de soins (ville-hôpital, inter-établissements)
- **Favoriser la recherche clinique et épidémiologique** en rendant disponibles des données structurées de prescription pour l'analyse et l'amélioration des pratiques

#### À qui s'adresse ce guide ?

Ce guide concerne l'ensemble des acteurs impliqués dans le circuit du médicament :

- **Médecins prescripteurs** (médecine de ville, hospitaliers, spécialistes)
- **Pharmaciens** (officine, hospitaliers)
- **Infirmiers** et autres professionnels paramédicaux
- **Établissements de santé** et leurs systèmes d'information
- **Éditeurs de logiciels** développant des solutions de prescription et de dispensation

#### Conformité et structuration de la posologie

Le guide intègre les recommandations de la HAS pour la structuration de la posologie, ayant pour objectif :

- Une **expression standardisée** de la posologie (dose, fréquence, durée, ...)
- Une **interprétation uniforme** par les différents acteurs du circuit
- Une **compatibilité** avec les outils d'aide à la prescription et à la dispensation

Pour en savoir plus sur l'interopérabilité en général, une documentation spécifique aux professionnels de santé est accessible [ici](https://ansforge.github.io/IG-documentation/nr-add-ps-doc/ig/doc_ps.html)
<!-- TODO mettre à jour le lien avec la version publiée -->

### Introduction destinée aux développeurs

<div style="background-color: #f0f0f0; border-left: 4px solid #666; padding: 15px; margin: 20px 0;">
<strong>⚙️ Vous êtes développeur ou intégrateur ?</strong><br/>
Cette section détaille la structure technique du guide, les profils FHIR et les transformations PN-13.
</div>

Ce guide d'implémentation spécifie comment utiliser les ressources FHIR internationales (MedicationRequest, Medication, ...) pour un usage national français.

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
