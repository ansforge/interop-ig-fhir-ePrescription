{% if site.data.info.releaselabel == 'ci-build' %}
  <div style="width: 65%">
      <blockquote class="stu-note">
      <p>
      <b>Attention !</b> Ce guide d'implémentation n'est pas en version courante. La version courante sera accessible via l'URL canonique (https://interop.esante.gouv.fr/ig/fhir/eprescription) lorsque celui-ci sera publié.
      </p>
      </blockquote>
  </div>
{% endif %}

Ce guide d'implémentation (IG) a pour vocation à spécifier l'interopérabilité de la [ePrescription](prescription-Intro.html).

### Introduction métier (i.e. professionnels de santé)

Une documentation spécifique aux professionnels de santé est accessible [ici](https://ansforge.github.io/IG-documentation/nr-add-ps-doc/ig/doc_ps.html)
<!-- TODO mettre à jour le lien avec la version publiée -->

### Introduction développeurs

Ce guide d'implémentation spécifie comment utiliser les ressources FHIR internationales (MedicationRequest, Medication, ...) pour utilisation nationale. 

Il s'appuie sur le standard PN-13 et sur la structuration de la posologie définie par la Haute Autorité de Santé.

L'IG intègre plusieurs pages :

- une partie définissant les profils FHIR autour de la ePrescription ainsi qu'un nombre conséquent d'exemples, pour utilisation générique (API Rest, Document, ...). Ces profils permettent à n'importe quel acteur souhaitant travailler sur la ePrescription en FHIR à s'appuyer sur cette base nationale.
- une partie indiquant [comment passer de flux PN-13 à des ressources FHIR](transformation-PN13-vers-FHIR.html) et inversement.
- Le guide contiendra également ultérieurement une partie document pour rassembler les lignes de prescription sous forme d'ordonnance

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
