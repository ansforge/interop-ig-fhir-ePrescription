Instance: HAS-29-Presc-LOVENOX
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "ENOXAPARINE sodique 6000 UI (LOVENOX®), solution injectable en seringue préremplie : 1 injection en SC par jour jusqu’à ce que l’INR de l'AVK soit dans la zone thérapeutique cible"
* type = #searchset
* entry.resource = medicationrequest-HAS-29-Presc-LOVENOX

Instance: medicationrequest-HAS-29-Presc-LOVENOX
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "1 injection en SC par jour jusqu’à ce que l’INR de l'AVK soit dans la zone thérapeutique cible"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: ENOXAPARINE sodique 6000 UI (LOVENOX®), solution injectable en seringue préremplie : 1 injection en SC par jour jusqu’à ce que l’INR de l'AVK soit dans la zone thérapeutique cible."
* medicationCodeableConcept = $SpecialitePharmaceutique#61937233 "LOVENOX 6 000 UI (60 mg)/0,6 ml, solution injectable en seringue préremplie"
* subject.reference = "Patient/14602"
* authoredOn = "2025-07-23T10:33:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.additionalInstruction.text = "jusqu’à ce que l’INR de l'AVK soit dans la zone thérapeutique cible."
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.route = $EDQM#20066000 "Voie sous-cutanée"
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "Seringue"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15052000