# Transformation de PN13 en FHIR - Guide d'implémentation de la ePrescription v1.1.0-ballot

* [**Table of Contents**](toc.md)
* **Transformation de PN13 en FHIR**

## Transformation de PN13 en FHIR

### Transformation PN13 en FHIR

La transformation de flux PN13 en ressources FHIR ou inversement se fait à partir de ConceptMap indiquant la correspondance entre les éléments XML de PN13 et les attributs des ressources FHIR. Elle dépend de certains éléments de la prescription (ex. lien entre les lignes de prescription) et des éléments fournis dans la prescription de départ .

#### Détail

* [Transformation PN13 vers FHIR](transformation-PN13-vers-FHIR.md)
* [Transformation FHIR vers PN13](transformation-FHIR-vers-PN13.md)

### Exemples PN13

Les exemples PN13 sont donnés à titre de référence pour illustrer les transformations PN13-FHIR. Chaque exemple est associé à une instance exemple FHIR qui est indiqué dans le paragraphe d’introduction avec les éventuels détails complémentaires sur la transformation.

Les transformations exemples PN13-FHIR utilisent les fichiers de mapping entre le free set CIO-DC et les terminologies UCUM et EDQM. Ces fichiers sont pour l’instant mis à disposition sur le [drive partagé du groupe de travail PN13-FHIR](https://drive.google.com/drive/folders/1o7zXx5sbdneqnFWAI-gHarY6QQaaReuM?usp=drive_link) .Ils seront directement intégrés au guide dans une version ultérieure.

#### Détail

* [Prescription PN13 médicament simple en DC](PN13-prescription-DC.md)
* [Prescription PN13 médicament simple en spécialité](PN13-prescription-specialite.md)
* [Prescription PN13 médicament composite](PN13-prescription-compound.md)
* [Prescription PN13 médicament virtuel](PN13-prescription-MV)

