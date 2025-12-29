Profile: FRMPSubstance
Parent: CodeableConcept
Id: fr-mp-substance
Title: "FR Medicinal Product Substance"
Description: """A FHIR CodeableConcept profile representing a coded medicinal product substance \r\n
Profil FHIR CodeableConcept représentant une substance de produit médicamenteux codée selon le référentiel des substances médicamenteuses RIUM (Répertoire International des Substances Médicamenteuses de l'ANS).
"""

* ^status = #draft
* ^experimental = false

* . ^short = "RIUM Medicinal Product Substance"
* . ^example[0].label = "Glucose"
* . ^example[=].valueCodeableConcept = $SMS#100000078171 "glucose"
* . ^example[=].valueCodeableConcept.text = "glucose"
* . ^example[+].label = "Périndopril tert-butylamine"
* . ^example[=].valueCodeableConcept = $SMS#100000091602 "périndopril tert-butylamine"
* . ^example[=].valueCodeableConcept.text = "périndopril tert-butylamine"

* coding from fr-substance-code (required)
* coding ^binding.description = "Medicinal product Substance"