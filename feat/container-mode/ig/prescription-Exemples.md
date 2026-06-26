# La prescription - Exemples - Guide d'implémentation de la ePrescription v1.1.0-ballot

* [**Table of Contents**](toc.md)
* [**La prescription**](prescription-Intro.md)
* **La prescription - Exemples**

## La prescription - Exemples

**📚 Exemples FHIR**– Cette page présente des instances FHIR concrètes illustrant les cas d'usage. Utile pour tous les profils : compréhension métier et référence d'implémentation.

Pour des raisons de lisibilité, les exemples présentés en FHIR sont considérés comme le résultat d’une recherche de prescription par identifiant (i.e. élément `groupIdentifier`) sous forme de **Bundle** de type `searchset`. Ce formalisme n’est pas obligatoire, la manière dont les ressources FHIR constituant une prescription sont mises à disposition dépend du serveur FHIR (ex. operation spécifique pour la recherche de prescription par identifiant, mise en oeuvre de `_include` et de `_revInclude`)

Les travaux de la HAS sur la structuration de la posologie des prescriptions de médecine de ville (lien à venir lorsque ces travaux seront publiés) ont été intégrés aux exemples. Ils sont identifiés par le préfixe HAS et le suffixe entre parenthèses id_poso indiqué dans le document de la HAS. Dans le cas où ils représentent des spécificités pour les prescriptions de médecine de ville (qui valent également pour les prescriptions hospitalières à exécution en ville), il sont précédés par la mention ****spécificité ville****

Pour les règles de modélisation illustrées par ces exemples (contraintes sur les unités de dose, durée d’administration, perfusions, patchs, dose calculée), consulter la page [Règles de modélisation](prescription-Modelisation.md).

### Exemples généraux

#### La ligne de prescription initiale, complexité du médicament prescrit

##### Médicament simple en spécialité

* [EFFERALGAN® 1 000 mg, cpr, 1 à 7h, 12h et 18h per os, pendant 5j](Bundle-Presc-EFFERALGAN.md)
* [CODOLIPRANE® 500 mg/30 mg, cpr, 1 à 7h et 18h per os, pendant 5j](Bundle-Presc-CODOLIPRANE-MedCodeableConcept.md)
* [DOLIPRANE® 2.4% ss sucre, 20 dose-kg à 7h et 18h per os, pendant 5j](Bundle-Presc-DOLIPRANE-20DoseParKG.md)
* [DIPROSONE® 0.05%, 1 application cutanée à 8h, pendant 5j](Bundle-Presc-DIPROSONE-AppCut.md)
* [NICORETTESKIN® 15 mg/16h, patch, 1 à 7h, pendant 2 semaines](Bundle-Presc-NICORETTESKIN-patch.md)
* [MATRIFEN® 75 ug/h, patch, 1 à 7h, toutes les 72h, pendant 8j](Bundle-Presc-MATRIFEN-patch-TL72h.md)
* [BIONOLYTE® G5, sol pr perf,poche 500 mL, 1 à 10h et 22h sur 12h, pendant 5j](Bundle-Presc-SolPrPerf-BIONOLYTE-G5-500mL-Sur12h.md)
* [HAS - INNOHEP® 14 000 UI anti-Xa/0,7 ml (tinzaparine sodique) solution injectable : 12 000UI anti-Xa (soit 170 UI anti-Xa /kg) , 1 fois/jour - voie sous-cutanée (id_poso=3)](Bundle-HAS-03-Presc-INNOHEP.md)
* [HAS - ACTISKENAN® 10 mg gélule : dix milligrammes par jour pendant sept jours (id_poso=5b)](Bundle-HAS-05b-Presc-ACTISKENAN.md)
* [HAS - EVRA® 203 µg/24h + 33,9µg/24h dispositif transdermique : Pendant 6 mois poser/remplacer un dispositif aux 1er, 8e et 15e jours du cycle ; La quatrième semaine à partir du 22ème jour est un intervalle libre sans dispositif transdermique (id_poso=11)](Bundle-HAS-11-2-Presc-EVRA.md)
* [HAS - GLUCOPHAGE® 500 mg comprimé : 1 comprimé matin et 1 comprimé soir, au cours ou à la fin des repas (id_poso=27)](Bundle-HAS-27-1-presc-GLUCOPHAGE.md)
* [HAS - enoxaparine sodique 4 000 UI (40 mg)/0,4 mL (LOVENOX®), solution injectable en seringue préremplie: 1 seringue, 1 fois par jour en sous-cutanée, à débuter 12 heures avant l’intervention chirurgicale. à poursuivre pendant 10 jours après l’intervention (id_poso=28)](Bundle-HAS-28-Presc-LOVENOX.md)
* [HAS - enoxaparine sodique 6000 UI (LOVENOX®), solution injectable en seringue préremplie : 1 injection en SC par jour jusqu’à ce que l’INR de l’AVK soit dans la zone thérapeutique cible (id_poso=29)](Bundle-HAS-29-Presc-LOVENOX.md)
* [HAS - DUROGESIC® dispositif transdermique 25 μg : un dispositif transdermique de vingt-cinq microgrammes à changer toutes les soixante-douze heures, pendant deux semaines (id_poso=31)](Bundle-HAS-31-Presc-DUROGESIC.md)
* [HAS - enoxaparine sodique 4 000 UI (40 mg)/0,4 mL, solution injectable en seringue préremplie (LOVENOX®): 1 injection en sous-cutanée par jour pendant 1 semaine (id_poso=32)](Bundle-HAS-32-1-Presc-LOVENOX.md)
* [HAS - ULTIBRO BREEZ® 85/43 µg gélule : 1 gélule à administrer par voie inhalée à la même heure chaque jour pendant 1 mois (id_poso=32)](Bundle-HAS-32-2-Presc-ULTIBRO-BREEZ.md)
* [HAS - VERSATIS ® 700 mg emplâtre médicamenteux: 1 emplâtre par jour à 20 h, à laisser pendant 12h sur la peau (id_poso=33)](Bundle-HAS-33-Presc-VERSATIS.md)

##### Médicament simple en DC

* [paracétamol, 1 g à 7h, 12h et 18h per os, pendant 5j](Bundle-Presc-Paracetamol.md)
* [bêtaméthasone 0.05%, 1 application cutanée à 8h, pendant 5j](Bundle-Presc-Betamethasone-ApplCut.md)
* [nicotine 15 mg/16h, patch, 1 à 7h, pendant 2 semaines](Bundle-Presc-Nicotine-15mgPar16h.md)
* [fentanyl 75 ug/h, patch 72h, 1 à 7h, tous les 3j, pendant 8j](Bundle-Presc-Fentanyl-patch72h-TL3j.md)
* [HAS - pantoprazole 40 mg comprimé: 40 mg le soir en DC (id_poso=1)](Bundle-HAS-01-Presc-Pantoprazole-DC.md)

##### Médicament composé

* [paracétamol+codéine 500 mg+30 mg, 1 à 7h et 18h per os, pendant 5j](Bundle-Presc-ParacetamolCodeine-500mg30mg.md)
* [Perfusion Glucose 5% 500 mL avec Sodium chlorure 2g et Potassium chlorure 1g, à 10h et 22h sur 12h, pendant 5j](Bundle-Presc-PerfGl-NaCl-KCl-500ml.md)
* [Perfusion Glucose 5% 1L avec Sodium chlorure 3g et Potassium chlorure 2g, à 10h et 22h sur 12h, pendant 5j](Bundle-Presc-PerfGl-NaCl-KCl-1l.md)
* marquer l’un des médicaments composant comme étant le soluté du médicament composé: [céfotaxine dans miniperf G5 100 mL, 4g céfotaxine en 20 min toutes les 6h pendant 3j](Bundle-Presc-MiniperfCefotaxime-En20min-Pdt3j.md) Voir [Règles de modélisation des perfusions et seringues électriques](prescription-Modelisation.md#perfusions-et-seringues-électriques), § consacré à l’extension **IsVehicle**
* [dobutamine 200 mg dans soluté=G5 qsp 40 mL, 400 µg/min pendant 1j](Bundle-Presc-PerfDobutamine-Qsp40mL.md)

##### Médicament virtuel

* [HAS - pantoprazole 40 mg comprimé: 40 mg le soir en MV (id_poso=1)](Bundle-HAS-01-Presc-Pantoprazole-MV.md)
* [HAS - fluindione 20 mg comprimé : 0,5 comprimé par jour (id_poso=2)](Bundle-HAS-02-Presc-Fluindione.md)
* [HAS - ropinirole comprimé 1mg : 1 comprimé à 7h, 12h 18h (id_poso=9)](Bundle-HAS-09-Presc-Ropinirole.md)
* [HAS - budesonide 1mg/2mL, suspension pour inhalation par nébuliseur en récipient unidose : 1 récipient unidose de 1 mg 4 fois par jour selon les modalités d’administration suivantes (Préparation pour nébuliseur ultrasonique : 3 mL Eau Pour Préparation Injectable + 1 récipient unidose (soit 2 mL) de BUDESONIDE 1mg/2mL) suspension pour inhalation par nébuliseur) A administrer en 20 min à 8h, 14h, 18h, et 22h à partir du 16/03/2023 (id_poso=17)](Bundle-HAS-17-Presc-Budesonide.md)
* [HAS - budesonide 1mg/2mL, suspension pour inhalation par nébuliseur en récipient unidose : 1 récipient unidose de 1 mg 4 fois par jour selon les modalités d’administration suivantes (Préparation pour nébuliseur ultrasonique : 3 mL Eau Pour Préparation Injectable + 1 récipient unidose (soit 2 mL) de BUDESONIDE 1mg/2mL) suspension pour inhalation par nébuliseur) A administrer en 20 min à 8h, 14h, 18h, et 22h jusqu’au 26/03/2023 (id_poso=18)](Bundle-HAS-18-Presc-Budesonide-MV.md)
* [HAS - morphine sulfate LP 10 mg gélule microgranule à libération prolongée: une gélule le soir (à 20h) pendant huit jours (id_poso=15)](Bundle-HAS-15-Presc-Morphine.md)
* [HAS - topiramate 15 mg gélule: 1 gélule par jour. Si difficulté à prendre la gélule, l’ouvrir et en administrer le contenu avec un peu de compote (id_poso=24)](Bundle-HAS-24-1-Topiramate.md)
* [HAS - hydrocortisone 10 mg : 1 comprimé matin et 1 comprimé midi. En cas de fièvre, de forte chaleur, d’infection, de diarrhée, de stress important, augmenter la quantité pour passer à : 2 comprimés matin et 2 comprimés midi. En cas de fièvre > 40°C passer à : 2 comprimés matin, 2 comprimés midi et 2 comprimés à 16h. Avec un maximum de 6 comprimés par jour. QSP 6 mois (id_poso=30)](Bundle-HAS-30-1-Presc-Hydrocortisone.md)
* [HAS - cetirizine 10 mg : 1 à 4 comprimés par jour selon les symptômes (urticaire) (id_poso=30)](Bundle-HAS-30-2-Presc-Cetirizine.md)
* [glucose 5%+sodium chlorure 2g+potassium chlorure 1g x 500mL, 1 à 10h et 22h sur 12h, pendant 5j](Bundle-Presc-MV-PerfGl-NaCl-KCl.md) 
* Note : Il s’agit de la prescription d’une perfusion préfabriquée, prête à l’emploi, d’un médicament associant deux électrolytes à du glucose 5%. C’est une association de substances. À la différence du médicament composé qui est un assemblage extemporané de médicaments simples.
 

#### La prescription initiale, complexité de la posologie

Un premier niveau de complexité est adressé par les cas d’usage précédents. Les niveaux de complexité supplémentaires adressent

* les doses rationnelles 
* [BISOPROLOL® 7.5 mg SANDOZ, 1/3cpr à 7h et 2/3 à 18h per os, pendant 1 semaine](Bundle-Presc-BISOPROLOL-SANDOZ-DosesRationnelles.md)
* Dans FHIR, les nombres rationnels sont traduits en type decimal, avec des règles concernant la gestion de la **précision**
* En pratique, pour l’expression de la dose, les nombres rationnels impliqués se limitent à 1/4, 1/3, 1/2, 2/3 et 3/4
* Ce guide recommande de représenter les rationnels à la 6ème décimal. Ainsi 
* 1/4 : 0.25
* 1/3 : 0.333333
* 1/2 : 0.5
* 2/3 : 0.666667
* 3/4 : 0.75
 
* ****spécificité ville**** les doses rationelles doivent pouvoir être exprimées en toutes lettres dans la posologie textuelle (i.e. dans l’extension `renderedDosageInstruction`) 
* [HAS - fluindione 20 mg comprimé quadrisécable : 3/4 cpr par jour (trois-quart de comprimé) (id_poso=5a)](Bundle-HAS-05a-Presc-Fluindione.md)
 
 
* les doses différentes entre horaires 
* [CLARADOL® 500 mg, 2 cpr à 7h et 1 cpr à 18h per os, pendant 5j](Bundle-Presc-CLARADOL-DoseDiffParHoraire.md)
* [paracétamol, 1 g à 7h et 500 mg à 18h per os, pendant 5j](Bundle-Presc-Paracetamol-DoseEvolutive.md)
* [HAS - hydrocortisone 10 mg comprimé: 20 mg à 8h et 10 mg à 12h (id_poso=20)](Bundle-HAS-20-Presc-Hydrocortisone.md)
 
* les moments de prise en fonction du rythme nycthéméral et/ou des activités de la vie quotidienne et/ou d’événements externes 
* [HAS - GLUCOPHAGE® 500 mg comprimé : 1 comprimé matin et 1 comprimé soir, au cours ou à la fin des repas (id_poso=27)](Bundle-HAS-27-1-presc-GLUCOPHAGE.md)
* [HAS - rifampicine 300 mg en gélule 2 gélules le matin 30 minutes avant le petit-déjeuner (id_poso=27)](Bundle-HAS-27-2-presc-Rifampicine.md)
* Note: l’élément utilisé en FHIR (`when`) est associé à un vocabulaire limité et obligatoire. L’extension **FrAdditionalWhenValues** a été créée pour référencer les moments de prises les plus usuels qui ne sont pas dans le vocabulaire FHIR. Cependant, tous les moments de prise n’ont pas pu être listés. Dans le cas d’un moment de prise non présent dans le vocabulaire FHIR ni dans le vocabulaire associé à l’extension **FrAdditionalWhenValues**, le moment de prise est à exprimer en toutes lettres dans une partie textuelle (i.e. dans `MedicationRequest.dosageInstruction.additionalInstruction.text`) 
* [HAS - enoxaparine sodique 4 000 UI (40 mg)/0,4 mL (LOVENOX®), solution injectable en seringue préremplie: 1 seringue, 1 fois par jour en sous-cutanée, à débuter 12 heures avant l’intervention chirurgicale. à poursuivre pendant 10 jours après l’intervention. (id_poso=28)](Bundle-HAS-28-Presc-LOVENOX)
 
 
* les arrêts de prise en fonction d’un événement 
* [HAS - enoxaparine sodique 6000 UI (LOVENOX®), solution injectable en seringue préremplie : 1 injection en SC par jour jusqu’à ce que l’INR soit dans la zone thérapeutique cible (id_poso=29)](Bundle-HAS-29-Presc-LOVENOX.md)
 
* les fourchettes de doses 
* [HAS - DAFALGAN CODEINE®, comprimé un à deux comprimés toutes les 12 h pendant 10 jours, selon l’intensité de la douleur, avec un maximum à 2 comprimés par prise et de 4 comprimés par jour. STOP SI NAUSEES (id_poso=4b)](Bundle-HAS-04b-Presc-DAFALGANCODEINE.md)
* [HAS - cetirizine 10 mg : 1 à 4 comprimés par jour selon les symptômes (urticaire) (id_poso=30)](Bundle-HAS-30-2-Presc-Cetirizine.md)
 
* les maximales autorisées par prise, par période et en durée 
* [HAS - CODOLIPRANE®: 1 comprimé si douleur, avec un maximum de 2 cp/prise, avec un maximum de 8 cp/jour, en respectant 4 heures minimales entre 2 prises (id_poso=14)](Bundle-HAS-14-1-Presc-CODOLIPRANE.md)
* [HAS - bethamethasone 0,05% - 1 à 2 applications par jour en couche mince et uniforme sur la zone à traiter. Ne pas dépasser 2 applications par jour (id_poso=14)](Bundle-HAS-14-2-Presc-Betamethasone.md)
* [HAS - racecadotril 100 mg gélule: 1 gélule 3 fois par jour au début de chaque repas. A poursuivre tant que la diarrhée persiste avec un maximum de 7 jours (id_poso=16)](Bundle-HAS-16-Presc-Racecadotril.md)
 
* les fourchettes de fréquences 
* [HAS - desloratadine 5 mg comprimé 1 comprimé « 1 à 2 fois par jour » en fonction de la gêne allergique (id_poso=13)](Bundle-HAS-13-Presc-Desloratadine.md)
 
* la fréquence minimale entre deux prises 
* [HAS - paracetamol 1000 mg comprimé: 1 comprimé, 3 prises par jour, espacés d’au moins 4 heures (id_poso=19)](Bundle-HAS-19-Presc-Paracetamol.md)
 
* les fréquences inférieures à la journée 
* [CLARADOL® 500 mg, 1 cpr toutes les 6h per os, pendant 5j](Bundle-Presc-CLARADOL-TL6h-MedCodeableConcept.md)
* [paracétamol, 500 mg toutes les 6 h per os, pendant 5j](Bundle-Presc-Paracetamol-TL6h.md)
* [HAS - paracetamol 500mg gélule - 2 gélules toutes les 6 h pendant 10 jours si douleurs (id_poso=4a)](Bundle-HAS-04a-Presc-Paracetamol.md)
* [HAS - enoxoparine 4 000 UI (40 mg)/0,4 mL, solution injectable en seringue préremplie : 1 seringue, 1 fois toutes les 12 heures - voie sous-cutanée (id_poso=12)](Bundle-HAS-12-3-Presc-Enoxaparine.md)
 
* les fréquences calendaires 
* [CLARADOL® 500 mg, 1 cpr à 18h tous les mardis et vendredis, per os, pendant 3 mois](Bundle-Presc-CLARADOL-TLMardisVendredis.md)
* [HAS - methotrexate 10 mg comprimé (sécable) : 2 comprimés, 1 fois par semaine, le mardi (id_poso=6)](Bundle-HAS-06-1-Presc-Methotrexate.md)
* [HAS - methotrexate 10 mg comprimé (sécable) : 20 mg, 1 fois par semaine, le mardi (id_poso=6)](Bundle-HAS-06-2-Presc-Methotrexate.md)
* [HAS - methotrexate 10 mg comprimé : 1 comprimé 1 fois par semaine, le mardi (id_poso=10)](Bundle-HAS-10-Presc-Methotrexate.md)
* [HAS - methotrexate cp 10 mg : 20 mg, 1 fois par semaine, le mardi (id_poso=12)](Bundle-HAS-12-2-Presc-Methotrexate.md)
* Le type complexe **Timing** ne permet pas le codage des situations suivantes 
* **tous les 05 du mois**
* **tous les derniers vendredis du mois**
 
* Le type complexe **Timing** est normatif, il est en pratique impossible de le faire évoluer. 
* Il est nécessaire pour l’instant de “calculer” les dates correspondantes à la fréquence calendaire et de les indiquer dans autant de dosageInstruction.
* Note: l’extension standard [dayOfMonth](https://hl7.org/fhir/R4/extension-timing-dayofmonth.html) existe en FHIR R4 (maturité 1), mais elle n’est pas reprise en FHIR R5. Son utilisation n’est donc pas conseillée.
 
* ****specificité ville**** dans le cas de contraintes calendaires ne pouvant pas être exprimées en FHIR, celles-ci doivent être indiquées en toutes lettres dans une partie textuelle (i.e. dans `MedicationRequest.dosageInstruction.additionalInstruction.text`) 
* [HAS - vitamine D 100 000 UI solution buvable : 1 ampoule, le premier jour de chaque mois (id_poso=11)](Bundle-HAS-11-1-Presc-VitamineD.md)
* [HAS - EVRA® 203 µg/24h + 33,9µg/24h dispositif transdermique : Pendant 6 mois poser/remplacer un dispositif aux 1er, 8e et 15e jours du cycle ; La quatrième semaine à partir du 22ème jour est un intervalle libre sans dispositif transdermique (id_poso=11)](Bundle-HAS-11-2-Presc-EVRA.md)
 
 
* les prescriptions conditionnelles simples 
* [CLARADOL® 500 mg, 1 cpr si douleur, 2 cpr max par prise, 6 cpr max par 24h, 4h délais min entre deux prises, pendant 5j](Bundle-Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin.md)
* [paracétamol, 500 mg per os si douleur, 1 g max par prise, 3 g max par 24h, 4h délais min entre deux prises, pendant 5j](Bundle-Presc-Paracetamol-SiDouleur-MaxPrise-DelaisMin.md)
* [HAS - paracetamol 500mg gélule - 2 gélules toutes les 6 h pendant 10 jours si douleurs (id_poso=4a)](Bundle-HAS-04a-Presc-Paracetamol.md)
* [HAS - DAFALGAN CODEINE®, comprimé un à deux comprimés toutes les 12 h pendant 10 jours, selon l’intensité de la douleur, avec un maximum à 2 comprimés par prise et de 4 comprimés par jour. STOP SI NAUSEES (id_poso=4b)](Bundle-HAS-04b-Presc-DAFALGANCODEINE.md)
* [HAS - paracetamol 500 mg gélule : Si douleur -dose max/prise de 1000 mg (soit 2 gélules) -4000 mg maximum par jour (soit 8 gélules)(id_poso=7)](Bundle-HAS-07-Presc-Paracetamol.md)
* [HAS - diazepam 10 mg comprimé bisécable (VALIUM®): 1 comprimé toutes les 6 heures - si agitation (id_poso=26)](Bundle-HAS-26-Diazepam.md)
 
* les doses progessives ou dégressives par palier 
* [méthylpredinosolone, 6 mg pendant 2j, puis 4 mg pendant 2j, puis 2 mg pendant 2j](Bundle-Presc-Methylpredinosolone-DosesEvolutives.md)
* [HAS - prednisolone 20 mg comprimé (sécable) : 60 mg jusqu’à obtenir 3 bandelettes urinaires négatives, puis 50 mg pendant 1 semaine, puis 40 mg pendant 1 semaine, puis 30 mg pendant 1 semaine, puis 20 mg pendant 1 semaine, puis 10 mg pendant 1 semaine, puis revoir pour l’arrêt selon évolution (id_poso=21)](Bundle-HAS-21-Presc-Prednisolone.md)
* [HAS - prednisolone 20 mg comprimé (sécable) : 60 mg jusqu’à obtenir 3 bandelettes urinaires négatives, puis 50 mg pendant 1 semaine, puis 40 mg pendant 1 semaine, puis 30 mg pendant 1 semaine, puis 20 mg pendant 1 semaine, puis 10 mg pendant 2 semaines, puis revoir pour l’arrêt selon évolution (id_poso=22)](Bundle-HAS-22-Presc-Prednisolone.md)
 
* les alternances de doses 
* [HAS - fluindione 20 mg comprimé quadrisécable: 0,5 comprimé au jour 1, et puis 0,75 comprimé au jour 2. Recommencer le cycle de 2 jours, à répéter sur le mois (id_poso=23)](Bundle-HAS-23-1-Presc-Fluindione)
* [HAS - amiodarone 200 mg comprimé: 1 comprimé pendant 5 jours (du lundi au vendredi), et puis arrêt 2 jours (samedi, dimanche). Recommencer le cycle de 7 jours, à répéter sur le mois (id_poso=23)](Bundle-HAS-23-2-Presc-Amiodarone)
 
* l’expression de la quantité d’une dose se référant à l’un des médicaments composant du médicament composé prescrit 
* [céfotaxine dans G5 100 mL, 4g (céfotaxine) en 20 min toutes les 6h pendant 4j](Bundle-Presc-MiniperfCefotaxime-En20min-Pdt4j.md)
* Voir [Règles de modélisation](prescription-Modelisation.md#bodc-basis-of-dose-component), § consacré à l’extension **Basis of Dose Component**
 
* l’expression d’une dose réelle pertinente à partir d’une dose théorique fonction de paramètres patient 
* [capécitabine 1800 mg (1000 mg/m²), 7h et 18h per os, pendant 14j](Bundle-Presc-Capecitabine-Dose-Calculee.md)
* ****spécificité ville**** La dose réelle pertinente (valeur absolue) doit être la seule indiquée dans la partie structurée de la posologie. La dose théorique en fonction de paramètres patient (valeur relative) peut être exprimée dans une partie textuelle (i.e. dans `MedicationRequest.dosageInstruction.additionalInstruction.text`) 
* [HAS - INNOHEP® 14 000 UI anti-Xa/0,7 ml (tinzaparine sodique) solution injectable : 12 000UI anti-Xa (soit 170 UI anti-Xa /kg) , 1 fois/jour - voie sous-cutanée (id_poso=3)](Bundle-HAS-03-Presc-INNOHEP.md)
 
 
* les modulation de doses 
* [HAS - NOVORAPID Flexpen® 100 UI / mL : A administrer avant chaque repas en fonction de la glycémie 6 U si glycémie entre 1,5 et 2 g/L​ 8 U si glycémie entre 2 et 2,5 g/L 10 U si glycémie supérieure à 2,5 g/L (id_poso=25)](Bundle-HAS-25-NOVORAPID.md)
* [HAS - hydrocortisone 10 mg : 1 comprimé matin et 1 comprimé midi. En cas de fièvre, de forte chaleur, d’infection, de diarrhée, de stress important, augmenter la quantité pour passer à : 2 comprimés matin et 2 comprimés le midi ou 2 comprimés matin, 2 comprimés le midi et 2 comprimés à 16h. Avec un maximum de 6 comprimés par jour. (id_poso=30)](Bundle-HAS-30-1-Presc-Hydrocortisone.md)
 
* les unités de prescription non référencées dans le Référentiel Unique d’Interopérabilité du Médicament 
* ces unités sont à exprimer en FHIR uniquement avec l’élément `unit`, les éléments `code`et `system`ne sont pas utilisés
* [HAS - bethamethasone 0,05% - 1 à 2 applications par jour en couche mince et uniforme sur la zone à traiter (id_poso=8=)](Bundle-HAS-08-1-Presc-Betamethasone.md)
* [HAS - paracetamol 24 mg/mL (DOLIPRANE 2.4%), susp buv, flac 100 mL : 1 dose correspondant à la graduation de 7 kg, toutes les 6 heures - Si température supérieure ou égale à 38,5°C.(id_poso=8)](Bundle-HAS-08-2-Presc-Paracetamol.md)
* [HAS - BEPANTHEN®5% crème : 1 application, 2 fois par jour, en couche mince (id_poso=12)](Bundle-HAS-12-1-Presc-BEPANTHEN.md)
 

#### Les modifications de la ligne prescription initiale

Il n’y a pas d’exemple, pour l’instant.

