Une prescription est un ensemble d'un ou plusieurs traitements prescrits associé(s) à sa/leur posologie. Afin de pouvoir représenter ces concepts sous format informatique, ils sont modélisés sous la forme d'une liste d'informations.

### Prescription

Le domaine couvert inclut les prescriptions hospitalières, les  prescriptions de médecine de ville ainsi que les prescriptions hospitalières exécutables en ville (PHEV).

Les spécifications sont issues des travaux du groupe de travail Interop'Santé. Ils s'appuient sur la version précédente du guide d'implémentation, des travaux de la HAS sur la structuration de la posologie pour les prescriptions de médecine de ville (lien à venir lorsque ces travaux seront publiés) et s'inspirent des profils européens pour la [prescription](http://hl7.eu/fhir/mpd) (profils en concertation lorsque ces travaux ont été menés).

#### Exemple d'informations portées par une prescription

Exemple de modélisation d'une prescription

<div class="figure" style="width:100%;">
    <img style="height: auto; width: 100%;" src="ExemplePrescriptionAnnotee.jpg" alt="Exemple prescription Annotée" title="Exemple prescription Annotée">
</div>

Note : cet exemple se concentre sur les données spécifiques à une ligne de prescription (un traitement prescrit associé à sa posologie). La modélisation des autres informations (ex. identité patient, identité prescripteur...) est traitée dans le guide d'intégration FRCore

#### Exemple d'informations portées par une posologie

Exemple 1 de posologie annotée :

<div class="figure" style="width:100%;">
    <img style="height: auto; width: 100%;" src="PosologieAnnotee1.jpg" alt="Posologie Annotée 1" title="Posologie Annotée 1">
</div>


Exemple 2 de posologie annotée :

<div class="figure" style="width:100%;">
    <img style="height: auto; width: 100%;" src="PosologieAnnotee2.jpg" alt="Posologie Annotée 2" title="Posologie Annotée 2">
</div>

#### Modélisation complète

- [Modélisation d'une ligne de prescription](StructureDefinition-fr-ligne-prescription.html)
- [Modélisation d'une posologie](StructureDefinition-fr-posologie.html)

#### Détail

- [Vue d'ensemble](prescription-VueEnsemble.html)
- [Cas d'usage](prescription-CasUsage.html)
- [Exemples](prescription-Exemples.html)
