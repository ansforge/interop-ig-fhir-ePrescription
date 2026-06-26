# La prescription - Règles de modélisation - Guide d'implémentation de la ePrescription v1.1.0-ballot

* [**Table of Contents**](toc.md)
* [**La prescription**](prescription-Intro.md)
* **La prescription - Règles de modélisation**

## La prescription - Règles de modélisation

**⚙️ Règles de modélisation**– Cette page détaille les règles d'implémentation FHIR pour les cas particuliers de la prescription. Destinée aux développeurs et intégrateurs.

### Médicament prescrit et dose(s)

#### Ex: LASILIX® 20 mg, sol inj amp 2 mL, XX à 7h et 18h IV, pendant 5j

* **unité de médicament prescrit** ➟ `MedicationRequest.medication` 
* `LASILIX®` → marque ➟ `code.coding.display` dans le libellé correspondant au code UCD provenant du [Référentiel Unique d’Interopérabilité du Médicament - RUIM](https://smt.esante.gouv.fr/terminologie-ref_interop_med/)
* `furosémide` → principe actif ➟ `.ingredient().item\[x\]`
* `20 mg` → dosage ➟ optionnellement dans `.ingredient().strength`
* `sol inj` → forme ➟ `.form`
* `amp` → présentation ➟ code EDQM dans le dénominateur du ratio du dosage et/ou du volume
* `2 mL` → volume ➟ `.amount`
 
* dose prescrite → `MedicationRequest.dosageInstruction` 
* `XX` → quantité ➟ `.doseAndRate`
* `à 7h et 18h` → horaire de prise ➟ `.timing.repeat.timeOfDay()`
* `per os` → voie d’administration ➟ `.route`
* `pendant 5j` → début (maintenant) et fin (début + 5j) ➟ `.timing.boundsPeriod`
 
* La quantité `XX` de la dose prescrite peut s’exprimer de 4 façons différentes, par exemple : 
* `1 Ampoule`(code EDQM `15002000`)
* `1` (unité [de présentation de l’unité de médicament prescrit] = ampoule contenant 20 mg de furosémide)
* `20 mg` (de principe actif = furosémide)
* `2 mL` (de produit = solution injectable contenant 20 mg de furosémide)
 

Ces 4 expressions permettent de déterminer la quantité de(s) principe(s) actif(s) à partir de caratéristiques du médicament prescrit. Cependant, pour des raisons de simplicité de dispensation et d’administration, dans le cas des prescriptions en spécialité pour lesquelles la présentation est définie par le code UCD utilisé, la première expression en unité de présentation est préférée si possible.

#### Ex: Furosemide XX à 7h et 18h IV, pendant 5j

* **unité de médicament prescrit** ➟ `MedicationRequest.medication` 
* `Furosemide` → médicament en DC ➟ `code.coding.display` dans le libellé correspondant au code de substance (code SMS ou code technique ANSM) provenant du [Référentiel Unique d’Interopérabilité du Médicament - RUIM](https://smt.esante.gouv.fr/terminologie-ref_interop_med/)
* `furosémide` → principe actif ➟ `.ingredient().item\[x\]` (optionnel dans le cas d’un médicament simple préscrit en DC dans la mesure où le le principe actif est identique au médicament)
* les autres caractéristiques ne sont pas contraintes par le prescripteur
 
* **dose prescrite** → `MedicationRequest.dosageInstruction` 
* caractéristiques identiques à celles de l’exemple de ligne de prescription en spécialité
 
* La **quantité** `XX` de la dose prescrite ne peut plus s’exprimer que d’1 façon : 
* `20 mg` (de principe actif = furosémide)
 
* Les 3 autres ne permettent pas de déterminer la quantité de(s) prinicipe(s) actif(s) 
* `1 [unité de présentation]`(unité de présentation non définie dans `medication`ni dans le RUIM)
* `1` (unité [de présentation de l’unité de médicament prescrit] = furosémide en quantité non définie)
* `2 mL` (de produit = un produit qui contient du furosémide en concentration non définie)
 

#### Contraintes

entre

* propriétés de l’**unité de médicament prescrit**
* expression de la **quantité de la dose prescrite**

##### Objectif

* La quantité de principes actifs de la dose doit être déterminée,
* Sauf pour les unités de prescription à volume indéterminé (ex : application), la concentration de principes actifs de la dose doit être déterminée.

##### Contrainte sur le Médicament prescrit (MedicationRequest.medication)

Le dosage (`.ingredient[].strength`) est exigé quand le médicament prescrit est un médicament composé:

* une association de principes actifs (ex : paracétamol + codéine)
* un médicament extemporané (ex : perfusion composée de plusieurs médicaments)

##### Contraintes sur l’Unité de la dose prescrite (MedicationRequest.dosageInstruction.doseAndRate)

L’unité est pertinente (donc autorisée), en fonction de son type,

* **unité de quantité** de principe actif, si le médicament prescrit n’est composé que d’**un seul principe actif** ;
* **unité de volume** du médicament prescrit, si le médicament prescrit a un **dosage en concentration** défini ;
* **unité de dénombrement** du médicament prescrit, si le médicament prescrit a un **dosage en quantité** défini.

On inclut dans définie, la possibilité de calcul à partir des propriétés connues. Par exemple, quantité connue 20 mg et volume connu 2 ml, implique que la concentration est définie, 10 mg/mL et que l’unité mL pour exprimer la quantité de la dose, par exemple 3 mL, est pertinente parce qu’elle détermine sa quantité de principe actif, 30 mg.

### Parties textuelles

Les prescriptions FHIR peuvent contenir plusieurs parties textuelles:

* pour indiquer des éléments qui ne peuvent pas être codés
* pour donner une version “humainement lisible” des éléments codés

**Eléments de posologie non structurés**

Certains éléments de posologie ne peuvent pas être représentés de manière complètement structurée ou doivent obligatoirement être représentés sous forme textuelle. Ces éléments sont renseignés dans un élément `MedicationRequest.dosageInstruction.additionalInstruction.text`.

**Note 1:** L’élément `MedicationRequest.dosageInstruction.patientInstruction` pourrait également être utilisé pour certaines indications complémentaires pour la posologie. Mais le choix entre `MedicationRequest.dosageInstruction.patientInstruction` et `MedicationRequest.dosageInstruction.additionalInstruction.text` n’est pas toujours évident. Afin de simplifier le profil, il a été décidé de n’utiliser que `MedicationRequest.dosageInstruction.additionalInstruction.text` qui peut être multivalué et éventuellement associé à un code. En conséquence, le profil `FRMedicationRequest`interdit l’usage de `MedicationRequest.dosageInstruction.patientInstruction`

**Note 2:** L’élement `MedicationRequest.dosageInstruction.additionalInstruction.text` est réservé pour les éléments de posologie qui ont été renseignés “à la main” et ne peuvent pas être représentés de manière structurée. Il ne doit pas être utilisé pour du texte généré automatiquement à partir de données structurées.

****Exemples d’éléments de posologie non structurés****

* indication spécifique de prise. 
* ex: “administrer le contenu avec un peu de compote” [HAS - topiramate 15 mg gélule: 1 gélule par jour. Si difficulté à prendre la gélule, l’ouvrir et en administrer le contenu avec un peu de compote (id_poso=24)](Bundle-HAS-24-1-Topiramate.md)
 
* moment de prise non codé dans le jeu de valeurs FHIR [event-timing](https://hl7.org/fhir/R4/valueset-event-timing.html) associé à l’élément `MedicationRequest.dosageInstruction.timing.repeat.when` ni dans le jeu de valeurs complémentaire [fr-additional-when-codes](ValueSet-fr-additional-when-codes.md) associé à l’extension [fr-additional-when-values](StructureDefinition-fr-additional-when-values.md) 
* ex: “à débuter 12 heures avant l’intervention chirurgicale” [HAS - enoxaparine sodique 4 000 UI (40 mg)/0,4 mL (LOVENOX®), solution injectable en seringue préremplie: 1 seringue, 1 fois par jour en sous-cutanée, à débuter 12 heures avant l’intervention chirurgicale. à poursuivre pendant 10 jours après l’intervention. (id_poso=28)](Bundle-HAS-28-Presc-LOVENOX)
 
* multiplicité des caractéristiques de moment de prise qui ne peuvent pas être codés dans `MedicationRequest.dosageInstruction.timing.repeat.when` qui est monovalué 
* ex: “matin et soir, au cours ou à la fin des repas​” [HAS - GLUCOPHAGE® 500 mg comprimé : 1 comprimé matin et 1 comprimé soir, au cours ou à la fin des repas (id_poso=27)](Bundle-HAS-27-1-Presc-GLUCOPHAGE.md)
 
* indication de condition de prise qui n’est pas facilement codable dans l’élément `MedicationRequest.dosageInstruction.asNeededCodeableConcept` 
* ex: “en fonction de la gène allergique” [HAS - desloratadine 5 mg comprimé 1 comprimé « 1 à 2 fois par jour » en fonction de la gêne allergique (id_poso=13)](Bundle-HAS-13-Presc-Desloratadine.md)
 
* contrainte calendaire ne pouvant pas être exprimée en FHIR 
* ex: “le premier jour de chaque mois” [HAS - vitamine D 100 000 UI solution buvable : 1 ampoule, le premier jour de chaque mois (id_poso=11)](Bundle-HAS-11-1-Presc-VitamineD.md)
* ex: “1er, 8e et 15e jours du cycle” [HAS - EVRA® 203 µg/24h + 33,9µg/24h dispositif transdermique : Pendant 6 mois poser/remplacer un dispositif aux 1er, 8e et 15e jours du cycle ; La quatrième semaine à partir du 22ème jour est un intervalle libre sans dispositif transdermique (id_poso=11)](Bundle-HAS-11-2-Presc-EVRA.md)
 
* l’alternance de doses ne pouvant pas être représentée en FHIR 
* “0,5 comprimé au jour 1, et puis 0,75 comprimé au jour 2. Recommencer le cycle de 2 jours” [HAS - fluindione 20 mg comprimé quadrisécable: 0,5 comprimé au jour 1, et puis 0,75 comprimé au jour 2. Recommencer le cycle de 2 jours, à répéter sur le mois (id_poso=23)](Bundle-HAS-23-1-Presc-Fluindione)
 

****Spécificité ville****

Dans le cas d’une dose calculée, si elle est fournie en plus de la valeur absolue, la valeur relative (ex. formule de calcul) doit être indiquée textuellement dans `MedicationRequest.doseInstruction.additionalInstruction.text` et non indiquée dans la partie structurée.

* ex: “soit 170UI anti-Xa /kg” [HAS - INNOHEP® 14 000 UI anti-Xa/0,7 ml (tinzaparine sodique) solution injectable : 12 000UI anti-Xa (soit 170 UI anti-Xa /kg) , 1 fois/jour - voie sous-cutanée (id_poso=3)](Bundle-HAS-03-Presc-INNOHEP.md)

**Version textuelle de la posologie**

Afin de permettre l’affichage de la posologie par tous les logiciels, y compris ceux qui n’ont pas la possibilité d’interpréter la structuration de la posologie, la posologie associée à une ligne de prescription est à indiquer dans l’extension `renderedDosageInstruction` qui préfigure l’élément `MedicationRequest.renderedDosageInstruction`en FHIR R5.

* ex: “40mg le soir” [HAS - pantoprazole 40 mg comprimé: 40 mg le soir en MV (id_poso=1)](Bundle-HAS-01-Presc-Pantoprazole-MV.md)

**Version textuelle de la prescription**

Même si une version textuelle de la prescription est produite automatiquement dans `MedicationRequest.text`, elle est souvent difficile à comprendre quand on ne maitrise pas FHIR. Une version textuelle de l’ensemble de la ligne de prescription représentée par la ressource `MedicationRequest` peut être renseigné dans l’élément `MedicationRequest.note.text`. Dans l’éventualité où la ressource `MedicationRequest` aurait plusieurs éléments `MedicationRequest.note` il est recommandé d’ajouter le préfixe “Prescription textuelle:” à l’élément `MedicationRequest.note` afin de simplifier la compréhension.

* ex: “PARACETAMOL 24 mg/mL (DOLIPRANE 2.4%), susp buv, flac 100 mL : 1 dose correspondant à la graduation de 7 kg, toutes les 6 heures - Si température supérieure ou égale à 38,5°C.” [HAS - paracetamol 24 mg/mL (DOLIPRANE 2.4%), susp buv, flac 100 mL : 1 dose correspondant à la graduation de 7 kg, toutes les 6 heures - Si température supérieure ou égale à 38,5°C.(id_poso=8)](Bundle-HAS-08-2-Presc-Paracetamol.md)

**Cas particulier de la traduction PN13 en FHIR**

PN13 intègre beaucoup d’éléments textuels qui ne peuvent être indiqués que dans l’élément `MedicationRequest.note`. Afin de permettre de discriminer la portée de chaque note, l’extension [fr-medicationrequest-note-scope](StructureDefinition-fr-medicationrequest-note-scope.md) a été créée. Elle n’est utilisée que dans le cas de prescription initalement en PN13 retranscrites en FHIR.

### Terminologies utilisables pour les unités

Les deux terminologies utilisables pour représenter les unités d’administration dans les posologies sont UCUM et EDQM. Toute unité utilisée pour une posologie qui ne correspond pas à un code natif de ces terminologies ne doit être exprimé que par l’élément `unit` du datatype `Quantity` et des datatypes dérivés, les éléments `code` et `system` ne doivent pas à utiliser.

En particulier, les non unit UCUM (code entre accolades {} ou entre crochets []) ne doivent pas être utilisées.

* ex: “une application” [HAS - BEPANTHEN®5% crème : 1 application, 2 fois par jour, en couche mince (id_poso=12)](Bundle-HAS-12-1-Presc-BEPANTHEN.md)

****Recommandation pour faciliter la dispensation****

Lorsqu’une unité d’administration n’est pas en UCUM et EDQM et qu’il est donc difficile de traduire la prescription en nombre de “boite” de médicament à dispenser, il est recommandé que le prescripteur mette une indication de ce qui doit être dispensé dans une unité “convertible”. L’extension `prescribedQuantity`, héritée du profil européen, est à utiliser dans ce cas.

### Durée d’administration

Quand elle n’est pas négligeable, sa valeur exprimée **DOIT** figurer au dénominateur de la dose prescrite.

Cf. [Requirements](https://hl7.org/fhir/R4/dosage-definitions.html#Dosage.doseAndRate.rate_x_) de l’élément `MedicationRequest.dosageInstruction.doseAndRate.rateRatio`

Si une durée d’administration n’est pas spécifiée par le prescripteur, cela signifie qu’elle est négligeable. Par exemple pour l’administration d’un comprimé ou l’injection direct d’une solution.

#### Cas particuliers

##### IVL (intraveineuse lente) / IVD (intraveineuse directe)

Intraveineuse lente et intraveineuse directe ne sont pas des voies d’administration, quand bien même ces concepts s’y invitent régulièrement dans les listes locales des voies d’administration. Ce sont des méthodes, dont la principale différence porte sur la durée d’administration, qui n’est dans ce cas pas quantifée mais simplement qualifiée.

Si le prescripteur souhaite ne pas donner une durée d’administration explicite quantifiée, cette distinction qualitative DOIT être portée dans l’élément `method` de `dosageInstruction`de la ressource **MedicationRequest**. La voie d’administration, élément `route`, prend dans les deux cas la valeur voie intraveineuse.

Ni l’EDQM, ni SNOMED CT ne fournissent de codes pour nuancer la méthode d’administration **injection**. La distinction qualitative est donc à exprimer dans l’élément `.text`de `method`

##### Injection continue

Les injections continues sans mention de durée d’administration parce qu’elle est indéterminée au moment de la prescription sans pour autant être négligeable, se traduisent par une expression de la dose en débit, sans mention de quantité, ni de durée d’administration.

Elles se distinguent des expressions de doses à durée d’administration négligeable par l’absence de quantité.

exemple

```
"doseAndRate": [
  {
     ...
     "rateRatio": {
      "value": 700,
      "unit": "µg"
      "system": "http://unitsofmeasure.org",
      "code": "ug"
    },
    "denominator": {
      "unit": "min",
      "system": "http://unitsofmeasure.org",
      "code": "min"
    }
  }
]

```

ou

```
"doseAndRate": [
  {
    ...
    "rateQuantity": {
      "value": 700,
      "unit": "µg/min"
      "system": "http://unitsofmeasure.org",
      "code": "ug/min"
    }
  }
]

```

**Note**: Il y deux façons d’exprimer un débit dans une dose FHIR :

* une unité UCUM de temps (ex: `min`) au dénominateur (`deniminator.code`) dans un type de donnée **ratio** (`rateRatio`)
* une unité UCUM de débit (ex: `ug/min`) dans un type de donnée **quantity** (`rateQuantity`)

La seconde implique une **interprétation du code UCUM par le logiciel** pour avoir connaissance de la notion de débit (savoir reconnaitre une unité de débit UCUM).

### Rattrapage de dose

Sauf indication contraire dans la prescription via l’élément `MedicationRequest.dosageInstruction.additionalInstruction.text`, la structuration de la posologie (ex. l’utilisation de l’élément `MedicationRequest.dosageInstruction.timing.repeat.when`) ne doit pas interdire de rattraper une dose qui n’a pas été prise au bon moment.

### Dates de début, de fin et durée de prescription

Elles traduisent la période d’exécution de la prescription.

Cette information est portée individuellement par chaque ligne de prescription, c’est à dire au niveau de la ressource **MedicationRequest** profilée par **FRMedicationRequest** ou **FRInpatientMedicationRequest**, comme paramètre de la posologie prescrite, dans l’élément `dosageInstruction` de type **Dosage**, sous-élément `timing` de type **Timing**

* date de début : `.dosageInstruction.timing.repeat.boundsPeriod.start`
* date de fin : `.dosageInstruction.timing.repeat.boundsPeriod.end`
* durée : dans FHIR la durée est exclusive des dates de début et date de fin: 
* Si elle est exprimée dans `.dosageInstruction.timing.repeat.boundsDuration`, les date de début et date de fin ne figurent pas dans la ressource (dans le cas des prescriptions de médecine de ville ou des prescriptions hospitalières à exécution en ville).
* Si les dates de début et de fin sont exprimées, la durée ne peut exister qu’au niveau de l’IHM. Quand elle est saisie, elle permet de calculer la date de fin à partir la date de début. Quand elle est affichée, elle est calculée à partir de la date de début et de la date de fin.
 

Ces dates de début et de fin de prescription, de même que la durée de prescription, ne sont pas des consignes de dispensation. Elles ne figurent donc pas dans les éléments `.validityPeriod` et `.expectedSupplyDuration` de l’élément `.dispensationRequest`.

En prescription intrahospitalière, il n’y a généralement pas de consigne de dispensation formulée par le prescripteur. Il n’y a donc généralement pas usage de l’élément `.dispensationRequest`.

Elles concernent également les règles définissant la **première dose prescrite** et la **dernière dose prescrite**.

Deux dates, de début et de fin, de la ligne de prescription doivent être considérées :

* La date de début et de fin **prescrite** : le plus souvent, “à partir de maintenant et pendant x jours” (ce qui se traduit à FHIR par une date de début renseignée et une date de fin calculée à partir de la date de début et la durée renseignées)
* La date de début et de fin **effective** : la date/heure à partir de laquelle commence effectivement la ligne prescription, c’est-à-dire la date/heure de **début d’administration de la premier dose**, et la date/heure effective de fin de la ligne de prescription, c’est-à-dire la date/heure de **fin d’administration de la dernière dose**.

**Date/heure de début prescrite** de la ligne de prescription (**MedicationRequest**)

Définit la date/heure de début exprimée par le médecin lors de sa prescription. **Note:** Si seule la durée du traitement est exprimée, la date de début correspond à la date de la première prise.

**La première dose prescrite**:

* si la date de début est exprimée: 
* celle dont la date/heure de début d’administration est **immédiatement postérieure ou égale à la date/heure de début prescrite**.
* calculée à partir de la **date/heure de début prescrite**, en fonction de la posologie définie par la collection de **dosageInstruction**.
 
* si la date de début n’est pas exprimée: 
* date/heure de la première prise
 

**Date/heure de fin prescrite** de la ligne de prescription (**MedicationRequest**)

Définit la date/heure de fin exprimée par le médecin lors de sa prescription. **Note:** Si seule la durée du traitement est exprimée, la date de fin correspond à la durée du traitement après la date de la première prise.

**La dernière dose prescrite**:

* si la date de fin est exprimée: 
* celle dont la date/heure de début d’administration est **immédiatement inférieure à la date/heure de fin prescrite**
* calculée à partir de la **date/heure de fin prescrite**, en fonction de la posologie définie par la collection `dosageInstruction`
 
* si la date de fin n’est pas exprimée: 
* celle dont la date/heure de début d’administration est *immédiatement inférieure à la date de fin calculée (durée du traitement après la date de la première prise)
* calculée à partir de la **durée de prescription**, en fonction de la date de la première prise et de la posologie définie par la collection `dosageInstruction`
 

La **date/heure de fin d’administration** de la dernière dose (sa date/heure de début + sa durée d’administration) peut être supérieure à **date/heure de fin prescrite**.

**Durée de prescription**:

Elle est liée aux deux paramètres précédents. Quand ces trois paramètres sont exposés à l’utilisateur pour saisie, en général il en fixe deux et le troisième est calculé. Pour les prescriptions de médecine de ville ou les prescriptions hospitalières à exécution en ville, il est possible que seule la durée de prescription soit exprimée les dates de début et fin dépendant de quand le patient se fait délivrer les médicaments.

Les unités UCUM suivantes sont utilisées :

1. **jour** (code = d) : égale 24h.
* Ce n’est pas le **jour calendaire**.
* Ainsi, 3 jours à partir de J0 07:12:34 donne comme **date de fin** J3 07:12:33.
* Et non pas J2 23:59:59 correspondant au décompte de 3 jours calendaires.

1. **semaine**(code = wk) : égale 7 jours.
1. **mois** (code = mo) : égale 28, 29, 30 ou 31 jours selon les mois impliqués.
* Ce n’est pas le **mois julien moyen** de 30,4375 jours défini par UCUM.
* Ainsi, 3 mois à partir du 2021-02-14T12:34:56 donne comme **date de fin** 2021-05-14T12:34:55.
* Et non pas 2021-04-16T20:04:55, correspondant à 2021-02-14T12:34:56 + 91 jours 7 heures 30 minutes, découlant de 3*365,25/12=91,3125 jours.

1. **année**(code = a) : égale 1 année**julienne moyenne**, soit 365,25 jours

**Garantie du nombre de doses prescrites sur une période donnée**:

Pour garantir qu’une prescription de, par exemple, 3 doses par jour pendant 5 jours, donne bien systématiquement 15 doses prescrites, comme logiquement attendu, et non pas 15 ou 16 en fonction des circonstances, il est spécifié dans ce guide d’implémentation que la **date/heure** de **fin prescrite** est exclue. En d’autres termes, l’intervalle [ date de début prescrite, date de fin prescrite [ est semi-ouvert.

**Illustration** Date de fin prescrite exclue : 15 doses (3/j x 5j = 15)

En effet, si la date de début prescrite est égale à la date de début de la premiére dose, un intervalle fermé incluant de la date de fin prescrite conduira à la prescription de 16 doses.

**Illustration** Si la date de fin prescrite était incluse : 16 doses (3/j x 5j = 16) !

**Note**: Dans FHIR, le type **Period**, utilisé pour porter le couple (**date de début**, **date de fin**), stipule que les bornes, **start** et **end**, sont incluses. L’interval est **fermé**.

Un interval **semi-ouvert**, par exemple [ 2021-02-14T12:34:56, 201-05-14T12:34:56 [, se traduira par un élément **Period** dans lequel

* **start** : 2021-02-14T12:34:56
* **end** : 2021-05-14T12:34:55

**Rappel**: Dans FHIR, le type datetime impose de donner les horaires à la seconde près lorsque l’heure est renseignée : format **hh:mn:ss**. Il est précisé que l’utilisateur fait son affaire de la granularité à l’heure ou à la minute près en remplissant les minutes et les secondes manquantes par des **00**.

Néanmoins, pour exprimer l’horaire de fin exclu à la granularité horaire ou minute, il conviendra de remplir les minutes ou secondes manquantes par **59**.

Par exemple 3j à partir du 14 fév 2021 12h34 (résolution à la minute)

* **start** : 2021-02-14T12:34:00
* **end** : 2021-05-14T12:33:59

ou 3j à partir du 14 fév 2021 12h (résolution à la tranche horaire)

* **start** : 2021-02-14T12:00:00
* **end** : 2021-05-14T11:59:59

**Date/heure de début effective et Date/heure de fin effective de la ligne de prescription**:

Ces deux dates ne figurent pas dans **MedicationRequest** R4. Dans la [R5](https://hl7.org/fhir/medicationrequest.html), un élément `[effectiveDosePeriod](https://www.hl7.org/fhir/medicationrequest-definitions.html#MedicationRequest.effectiveDosePeriod)` conçu pour accueillir ces deux dates a été ajouté.

**Note PN13**:

* Ces deux dates figurent dans l’objet ELEMENT DE PRESCRIPTION, éléments **Dh_début** et **Dh_fin**.

Les règles de gestion suivantes doivent être appliquées pour définir ces deux dates en fonction de la collection de `dosageInstruction` associée au **MedicationRequest**. Elles reprennent celles de PN13 et sont conformes à la [définition de la R5](https://hl7.org/fhir/medicationrequest.html).

1. La Date/heure de début effective doit être égale à la date/heure de début d’administration de la première dose décrite par la collection de`dosageInstruction`.
1. La Date/heure de fin effective doit être égale à la date/heure de fin d’administration de la dernière dose décrite par la collection de`dosageInstruction`.

**Illustration** 1 comprimé 3 fois par jour (7h, 12h, 18h) pendant 5 jours, prescrit à 10h30, à partir de maintenant (10h30), donc 1ère dose à 12h.

Notes

1. Dans cet exemple,
* la Date/heure début prescrite est J1 10h30 ;
* la Date/heure fin prescrite est J6 10h30 (J1 10h30 + 5j = J6 10h30) ;
* la dernière dose est celle dont la date/heure d’administration précède la Date/heure fin prescrite (J6 10h30). Cette dernière dose a comme date/heure d’administration J6 7h. Ce qui conduit à une Date/heure fin effective de la ligne de prescription à J6 7h.

1. Si l’administration s’effectue sur une certaine durée, perfusion, seringue électrique, etc., le calcul de la date/heure de fin d’administration de la dernière dose à partir de**dosageInstruction**doit ajouter la durée de l’administration,`dosageInstruction.doseAndRate.RateRatio.denominator`, à la date/heure de début d’administration de cette dernière dose.
1. Pour les posologies complexes, impliquant une description au travers d’une collection d’éléments`dosageInstruction`rattachés à**MedicationRequest**, c’est l’interprétation de la collection de`dosageInstruction`qui doit conduire au calcul de ces dates/heures début/fin effectives de**MedicationRequest**(fonction min() pour les dates de début, fonction max() pour les date de fin).

**Illustration** G5 1L sur 12h, 2 fois par jour (10h, 22h) pendant 5 jours, prescrit à 9h30, à partir de maintenant (9h30), donc 1ère dose à 10h.

Note

Dans cet exemple

* la Date/heure début prescrite est J1 9h30 ;
* la Date/heure fin prescrite est J6 9h30 (J1 9h30 + 5 j = J6 9h30) ;
* la dernière dose est celle dont la date/heure de début d’administration précède la Date/heure fin prescrite (J6 9h30). Cette dernière dose a comme date/heure de début d’administration J5 22h et durée d’administration 12h. Ce qui conduit à une Date/heure fin effective prescription à J6 10h.

Pour les **posologies conditionnelles d’un évènement aléatoire**, « si douleur » par exemple, il faut prendre comme dates/heures de début/fin de **MedicationRequest** celles de la période de prise en compte de l’évènement.

* Exemple : Paracétamol 1 g si douleur de J0 à J+3.
* Les dates/heures début/fin de MedicationRequest sont respectivement J0 et J+3.

### Perfusions et seringues électriques

Elles présentent la particularité d’avoir un médicament prescrit composé de plusieurs médicaments simples, exprimés en spécialité et/ou en DC.

De ce fait, le rapport entre les caractéristiques du médicament prescrit composé et l’expression de la quantité des doses prescrites présente quelques particularités.

#### BoDC (Basis of Dose Component)

Dans un médicament composé, permet d’exprimer à quel médicament composant, quelle ressource **Medication**, se réferre l’expression de la dose.

Ex: Permet de rapporter l’expression de la quantité 4g de la dose, au médicament céfotaxine du médicament composé céfotaxine dans 100 mL de glucose 5%.

Cette information est portée par l’extension [**FrBasisOfDoseComponent**](StructureDefinition-fr-basis-of-dose-component.md) de l’élément `doseAndRate` du type complex **Dosage** qui s’applique à l’élément `dosageInstruction`* de la ressource **MedicationRequest**.

Voir exemple [céfotaxine dans G5 100 mL, 4g céfotaxine en 20 min toutes les 6h pendant 4j](Bundle-Presc-MiniperfCefotaxime-En20min-Pdt4j.md)

Note PN13:

* Dans PN13, c’est le **COMPOSANT PRESCRIT** qui est marqué comme **est_Référent_poso**, et non pas les **ELEMENT DE POSOLOGIE** qui doivent tenir compte de ce marquage d’un **COMPOSANT PRESCRIT**.
* Dans FHIR, c’est l’élément **dosageInstruction** qui est marqué par la référence à la ressources **Medication** sur laquelle se fonde l’expression de la quantité du dosage.

#### IsVehicle

Dans un médicament composé, permet d’exprimer quel composant, quelle ressource **Medication**, est le soluté.

Ex: Permet de marquer le glucose 5% comme étant le soluté dans le médicament composé céfotaxine dans 100 mL de glucose 5%.

Cette information est portée par l’extension [**FrIsVehicle**](StructureDefinition-fr-is-vehicle.md).

Cette extension est appliquée à l’élément `ingredient` de la ressource **Medication** composée.

Voir l’exemple [céfotaxine dans miniperf G5 100 mL, 4g céfotaxine en 20 min toutes les 6h pendant 3j](Bundle-Presc-MiniperfCefotaxime-En20min-Pdt3j.md)

Note PN13:

* Dans PN13, le marqueur **est_véhicule** est porté par le **COMPOSANT PRESCRIT**.
* Dans PN13, l’alernative proposée n’est pas possible parce que la collection de **COMPOSANT PRESCRIT** est directement portée par l’**ELEMENT DE PRESCRIPTION**, l’équivalent de la ressource **MedicationRequest**. Il n’y a pas d’élément XML container intermédiaire équivalent de la ressource **Medication** composé (profil **FrMedicationCompound**).

#### Q.S.P. (quantité suffisante pour …)

Cette expression est utilisée dans la prescription des injectables en seringue électrique pour déclarer le volume de soluté composant le médicament prescrit en **quantité suffisante pour** atteindre le volume du médicament composé, c’est-à-dire le volume final de la seringue.

L’application de la règle suivante répond à ce cas d’usage :

* repérer l’**ingredient** représentant le médicament composant qui joue le rôle de soluté avec l’extension **IsVehicule** ;
* ne pas mettre de volume à ce médicament composant jouant le rôle de soluté (absence d’élément amount dans la ressource **Medication** représentant le médicament soluté) ;
* mettre le volume cible dans l’élément amount de la ressource **Medication** représentant le médicament composé.

Cette règle impose l’utilisation de l’extension **IsVehicule**. Voir exemple [dobutamine 200 mg dans soluté=G5 qsp 40 mL, 400 µg/min pendant 1j](Bundle-Presc-PerfDobutamine-Qsp40mL.md)

En [R5](https://hl7.org/fhir/medication.html), la ressource **Medication** voit l’élément `ingredient.strength` passer de type exclusivement **Ratio** en type alternatif **Ratio**, **Quantity** ou **CodeableConcept** avec jeu de valeurs préferré contenant la valeur qs (quantité suffisante pour).

* En mettant dans 
* `.totalVolume` : le volume cible de la seringue,
* `.ingredient\[soluté\].strengthCodeableConcept` : le code qs il est prescrit explicitement que le soluté est en Q.S.P. le volume cible de la seringue.
 

**Note**: En R5 l’élément amount est renommé **totalVolume** pour lever toute ambiguité avec les volumes pouvant figurer dans les `ingredient.strength\[x\]`.

****spécifité ville**** La Q.S.P que l’on peut retrouver sur certaines ordonances de ville n’a pas la même signification qu’à l’hôpital, elle est à comprendre comme une durée de traitement. De ce fait, elle est traduite:

* soit par `MedicationRequest.dosageInstruction.timing.repeat.bondsDuration`si aucune date de début n’est mentionée
* soit par `MedicationRequest.dosageInstruction.timing.repeat.bondsPeriod.end` si une date de début est mentionnée

Voir exemple [HAS - hydrocortisone 10 mg : 1 comprimé matin et 1 comprimé midi. En cas de fièvre, de forte chaleur, d’infection, de diarrhée, de stress important, augmenter la quantité pour passer à : 2 comprimés matin et 2 comprimés midi. En cas de fièvre > 40°C passer à : 2 comprimés matin, 2 comprimés midi et 2 comprimés à 16h. Avec un maximum de 6 comprimés par jour. QSP 6 mois (id_poso=30)](Bundle-HAS-30-1-Presc-Hydrocortisone.md)

### Précisions sur les patchs

#### Propriétés du patch

Un patch est un médicament incluant un dispositif intégré garantissant

* une durée maximale de diffusion (ex: 16h, 72h)
* et 
* une quantité (15 mg) ou
* un débit (75 ug/h) délivré de principe(s) actif(s).
 

Ces informations sont des propriétés du médicament prescrit.

Soit elles font partie intégrante du médicament prescrit dans le cas d’une prescription en spécialité ou d’une prescription de médicament virtuel, soit s’expriment dans la ressource **Medication** référencée par l’élément medication qui décrit l’unité de médicament prescrit dans la ressource **MedicationRequest**.

#### Propriété de la dose

La durée d’administration du patch est un choix du prescipteur.

Elle **DOIT** être exprimée en tant que telle dans les éléments `dosageInstruction.timing.repeat.duration` et `dosageInstruction.timing.repeat.durationUnit`, même si elle est identique à la durée maximale garantie par le dispositif intégré.

Voir exemple [HAS - EVRA® 203 µg/24h + 33,9µg/24h dispositif transdermique : Pendant 6 mois poser/remplacer un dispositif aux 1er, 8e et 15e jours du cycle ; La quatrième semaine à partir du 22ème jour est un intervalle libre sans dispositif transdermique (id_poso=11)](Bundle-HAS-11-2-Presc-EVRA.md)

### Précisions sur le lien dose calculée et dose prescrite

Il arrive que la dose prescrite découle d’un dose de référence formulée en quantité de principe actif par unité de poids ou de surface corporelle. La dose effectivement prescrite est arrondie à une valeur réalisable.

Ex: capécitabime 1000 mg/m².

* Pour un patient de 1,85 m² (1,75 m et 70 kg), la dose calculée est 1850 mg.
* Les formes orales sèches disponibles ont un dosage de 150 mg ou 500 mg.
* Le médecin prescrit une dose effective de 1800 mg.

Ces deux valeurs de la dose prescrite sont transmises dans deux éléments doseAndRate distingués par leur type

```
"doseAndRate": [
   {
      "type": {
         "coding": [
            {
               "system": "http://terminology.hl7.org/CodeSystem/dose-rate-type",
               "code": "calculated",
               "display": "Calculated"
            }
         ]
      },
      "doseQuantity": {
         "value": 1000,
         "unit": "mg/m²",
         "system": "http://unitsofmeasure.org",
         "code": "mg/m2"
      }
   },
   {
      "type": {
         "coding": [
            {
               "system": "http://terminology.hl7.org/CodeSystem/dose-rate-type",
               "code": "ordered",
               "display": "Ordered"
            }
         ]
      },
      "doseQuantity": {
         "value": 1800,
         "unit": "mg",
         "system": "http://unitsofmeasure.org",
         "code": "mg"
      }
   }
]

```

Voir exemple [capécitabine 1800 mg (1000 mg/m²), 7h et 18h per os, pendant 14j](Bundle-Presc-Capecitabine-Dose-Calculee.md)

****spécifité ville**** La dose réélle pertinente (valeur absolue) doit être la seule indiquée dans la partie structurée de la posologie. La dose théorique en fonction de paramètres patient (valeur relative) peut être exprimée dans la partie textuelle (i.e. dans `MedicationRequest.dosageInstruction.additionalInstruction.text`). Voir exemple [HAS - INNOHEP® 14 000 UI anti-Xa/0,7 ml (tinzaparine sodique) solution injectable : 12 000UI anti-Xa (soit 170 UI anti-Xa /kg) , 1 fois/jour - voie sous-cutanée (id_poso=3)](Bundle-HAS-03-Presc-INNOHEP.md)

**Note**: Il est tout à fait possible de prescrire plus simplement capécitabine 1000 mg/m², accompagnée de la `surface corporelle` (1,85 m²), voire seulement de la `taille` (1,75 m) et du `poids` (70 kg) du patient dans des ressources **Observation** référencées par `MedicationRequest.supportingInformation`. Mais c’est un autre cas d’usage, qui, quand bien même il déboucherait sur la même délivrance, **capécitabine 1800 mg**, laisserait au pharmacien l’arbitrage de l’arrondi par rapport à la dose prescrite. C’est un cas d’usage différent parce que l’acteur et le temps où se fait l’arrondi ne sont pas les mêmes.

### Liens entre lignes de prescription

Les liens entre lignes de prescription peuvent bien sûr être indiqués dans les éléments `MedicationRequest.dosageInstruction.additionalInstruction.text`. Cependant, afin de faciliter la constitution automatisée de plan de prise et assurer une meilleure sécurité de prise, il est possible d’en modéliser certains via une ressource `RequestGroup`. La ressource `RequestGroup` utilisée pour représenter ces liens est liée aux ressources `MedicationRequest`concernées par l’élément `groupIdentifier`

****Point d’attention**** L’utilisation de la ressource `RequestGroup` impose que les `MedicationRequest`liées aient comme valeur `option`pour `MedicationRequest.intent`. Il est donc primordial pour toute `MedicationRequest` avec `option` comme `intent` de rechercher d’éventuelles ressources `RequestGroup` ayant le même `groupIdentifier` pour vérifier s’il s’agit d’une ligne de prescription liée à une autre.

**Médicaments à prendre en même temps**

Les lignes de prescription correspondant à des médicaments à prendre en même temps sont liées par une ressource `RequestGroup`référençant chaque ligne dans un occurrence de `RequestGroup.action`(via `RequestGroup.action.resource.reference`). La prise en même temps est représentée par une relation de type `concurrent` entre les deux actions.

* ex: [METHOTREX® et LEDERFOLINE® à prendre en même temps](Bundle-MultiLine-Presc-METHOTREXATE-LEDERFOLINE.md)

**Médicaments à prendre avec un intervalle de temps**

Les lignes de prescription correspondant à des médicaments à prendre avec un intervalle de temps entre les deux sont liées par une ressource `RequestGroup`référençant chaque ligne dans un occurrence de `RequestGroup.action`(via `RequestGroup.action.resource.reference`). La prise en différée est représentée par une relation de type `after` ou `before`entre les deux actions.

* ex: [Paracetamol 2h après Sucralfate](Bundle-MultiLine-Presc-Sucralfate-Paracetamol.md)

**Alternative entre deux médicaments**

Les lignes de prescription correspondant une alternative sont liées par une ressource `RequestGroup`référençant chaque ligne dans un occurrence de `RequestGroup.action`(via `RequestGroup.action.resource.reference`). L’alternative est représentée par la valeur `ALT` dans l’extension [fr-additional-action-relationship](StructureDefinition-fr-additional-action-relationship.md) au niveau de l’élément `RequestGroup.action.relatedAction`, la valeur de `RequestGroup.action.relatedAction.relationship` étant fixée à `concurrent`. L’action qui porte cette relation référence le médicament de “seconde intension” si le premier n’est pas adapté. Les conditions d’utilisation du médicament de “seconde intension” sont à indiquer dans `RequestGroup.action.description`

* ex: [METFORMINE® ou GLICLAZIDE® en cas d’intolérance digestive à la METFORMINE®](Bundle-MultiLine-Presc-METFORMINE-GLICLAZIDE.md)

