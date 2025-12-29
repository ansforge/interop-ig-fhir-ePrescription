Profile: FRObservationForPrescription
Parent: Observation
Id: fr-observation-for-prescription
Title: "FR Observation For Prescription"
Description: """French observation profile for prescription purposes. Observation provided as context of the prescription (ex. weight, height...)\r\n
Profil français de modélisation de la ressource Observation pour les besoins de la prescription. Observation fournissant un contexte à la prescription (ex. poids, taille...).
"""
* ^status = #draft
* subject 1..
* subject only Reference($FrCorePatient)