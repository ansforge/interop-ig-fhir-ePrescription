Instance: TradPN13FHIR-Presc-MV-Paracetamol-1g-cpr-eff
InstanceOf: fr-prescription-bundle-for-example
// exemple de traduction d'une prescription PN13 en MV
Usage: #example
Description: "Paracetamol 1g cpr eff 3x/j pdt 2j - Traduction d'une prescription PN13 en MV"
* type = #searchset
* entry[0].resource = medication-TradPN13FHIR-Presc-MV-Paracetamol-1g-cpr-eff
* entry[+].resource = medicationrequest-TradPN13FHIR-Presc-MV-Paracetamol-1g-cpr-eff

Instance: medication-TradPN13FHIR-Presc-MV-Paracetamol-1g-cpr-eff
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medicatiomedication-TradPN13FHIR-Presc-MV-Paracetamol-1g-cpr-eff"
* meta.profile = Canonical(fr-medication-noncompound)
* code = $Medicabase#MV00002633 "Paracétamol 1g comprimé effervescent"

Instance: medicationrequest-TradPN13FHIR-Presc-MV-Paracetamol-1g-cpr-eff
InstanceOf: fr-inpatient-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-inpatient-medicationrequest)
* identifier[0].value = "id1"
* identifier[=].system = "https://somehospital.fr/PrescrptionLine-ID"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Paracetamol 1g cpr eff 3x/j pdt 2j"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationReference.reference = "#medication-TradPN13FHIR-Presc-MV-Paracetamol-1g-cpr-eff"
* subject.identifier.value = "123456"
* subject.identifier.system = "https://somehospital.fr/IPP"
* encounter.identifier.value = "234567"
* encounter.identifier.system = "https://somehospital.fr/Sejour"
* supportingInformation[0].type = "Organization"
* supportingInformation[=].identifier.value = "2571"
* supportingInformation[=].identifier.system = "https://somehospital.fr/UF"
* supportingInformation[=].extension[UFRole].valueCode = #UFMED
* authoredOn = "2007-12-27T10:33:00+01:00"
* requester.identifier.value = "345678"
* requester.identifier.system = "https://somehospital.fr/EI"
* groupIdentifier.value = "IdentifiantAttribuePourLaTraductionEnFHIR"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction[0].timing.repeat.boundsPeriod.start = "2007-12-28T07:00:00+01:00"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2007-12-30T18:00:00+01:00"
* dosageInstruction[=].timing.repeat.frequency = 3
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].route = $EDQM#20053000 "Voie orale"
* dosageInstruction[=].doseAndRate[0].doseQuantity.value = 1
* dosageInstruction[=].doseAndRate[=].doseQuantity.system = $EDQM
* dosageInstruction[=].doseAndRate[=].doseQuantity.code = #15036000
* dosageInstruction[=].doseAndRate[=].doseQuantity.unit = "Comprimé"
