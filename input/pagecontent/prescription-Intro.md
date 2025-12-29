Une prescription est un ensemble d'un ou plusieurs traitements prescrits associé(s) à sa/leur posologie. Afin de pouvoir représenter ces concepts sous format informatique, ils sont modélisés sous la forme d'une liste d'informations.

Le domaine couvert inclut les prescriptions hospitalières, les  prescriptions de médecine de ville ainsi que les prescriptions hospitalières exécutables en ville (PHEV).

Les spécifications sont issues des travaux du groupe de travail Interop'Santé. Ils s'appuient sur la version précédente du guide d'implémentation, des travaux de la HAS sur la structuration de la posologie pour les prescriptions de médecine de ville (lien à venir lorsque ces travaux seront publiés) et s'inspirent des profils européens pour la [prescription](http://hl7.eu/fhir/mpd) (profils en concertation lorsque ces travaux ont été menés).

### Exemple d'informations portées par une prescription

Exemple de modélisation d'une prescription

<div class="figure" style="width:100%;">
    <img style="height: auto; width: 100%;" src="ExemplePrescriptionAnnotee.jpg" alt="Exemple prescription Annotée" title="Exemple prescription Annotée">
</div>

Note : cet exemple se concentre sur les données spécifiques à une ligne de prescription (un traitement prescrit associé à sa posologie). La modélisation des autres informations (ex. identité patient, identité prescripteur...) est traitée dans le guide d'intégration FRCore

### Exemple d'informations portées par une posologie

Exemple 1 de posologie annotée :

<div class="figure" style="width:100%;">
    <img style="height: auto; width: 100%;" src="PosologieAnnotee1.jpg" alt="Posologie Annotée 1" title="Posologie Annotée 1">
</div>


Exemple 2 de posologie annotée :

<div class="figure" style="width:100%;">
    <img style="height: auto; width: 100%;" src="PosologieAnnotee2.jpg" alt="Posologie Annotée 2" title="Posologie Annotée 2">
</div>

### Modélisation métier de la ligne de prescription et de la posologie

Pour faciliter la compréhension par les professionnels de santé, des **modèles métier** ont été élaborés pour décrire de manière exhaustive les données qui constituent une ligne de prescription et une posologie.

Ces modèles utilisent le formalisme des **"modèles logiques"** d'HL7, qui permettent de représenter les concepts métier de façon indépendante des contraintes techniques de FHIR. Contrairement aux profils FHIR techniques destinés aux développeurs, ces modèles logiques offrent une vision métier claire et accessible, facilitant le dialogue entre professionnels de santé, éditeurs de logiciels et experts FHIR.

**Avantages pour les professionnels de santé :**
- Vue d'ensemble complète des informations d'une prescription, sans jargon technique
- Langage commun entre les prescripteurs et les équipes informatiques
- Référentiel métier pour valider que tous les besoins sont bien couverts

**Modèles disponibles :**
- [Modélisation d'une ligne de prescription](StructureDefinition-fr-ligne-prescription.html)
- [Modélisation d'une posologie](StructureDefinition-fr-posologie.html)

### Sommaire de la partie prescription

- [Vue d'ensemble](prescription-VueEnsemble.html) : modélisation FHIR d'une prescription (ressources, profils, structuration du médicament prescrit et de la posologie)
- [Cas d'usage](prescription-CasUsage.html) : scénarios de prescription couverts (médicaments simples/composés, spécialité/DC, posologies simples/complexes)
- [Exemples](prescription-Exemples.html) : instances FHIR concrètes illustrant les différents cas d'usage, incluant les exemples de la HAS sur la structuration de la posologie
