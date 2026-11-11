### Exemple PN13 de prescription de médicament virtuel

#### Paracétamol 1000 MG en comprimé effervescent 3x/jour

Cette prescription PN13 est traduite en FHIR dans l'instance [TradPN13FHIR-Presc-MV-Paracetamol-1g-cpr-eff](./Bundle-TradPN13FHIR-Presc-MV-Paracetamol-1g-cpr-eff.html).

```xml
<?xml version="1.0" encoding="UTF-8"?>
<Messages xsi:schemaLocation="http://www.phast.fr/SIPhII PN13-IS.4.0.34.xsd" xmlns="http://www.phast.fr/SIPhII" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Phast-version="1.1.1">
    <M_Prescription_médicaments>
        <Patient>
            <Ipp>123456</Ipp>
        </Patient>
        <Séjour>
            <Id_séjour>234567</Id_séjour>
        </Séjour>
        <Prescription>
            <Mode_communication>2</Mode_communication>
            <Dh_prescription>20071227103300</Dh_prescription>
            <Unité_resp_médicale Phast-nomenclature="CH_Bihorel-UF">3456</Unité_resp_médicale>
            <Elément_prescr_médic>
                <Id_élément_prescr>id1</Id_élément_prescr>
                <Libellé_élément_prescr>Paracétamol cpr eff 3x1g/j x 3j</Libellé_élément_prescr>
                <Cré_arr_mod_val>C</Cré_arr_mod_val>
                <Fourniture>1</Fourniture>
                <Id_prescripteur>345678</Id_prescripteur>
                <Voie_administration>54</Voie_administration>
                <Dh_début>20071228070000</Dh_début>
                <Dh_fin>20071230180000</Dh_fin>
                <Composant_prescrit>
                    <Type_composant_14>14</Type_composant_14>
                    <Code_composant_14>MV00002633</Code_composant_14>
                    <Libellé_composant>Paracétamol 1 g comprimé effervescent</Libellé_composant>
                    <Quantité_composant_prescrite>
                        <Nombre>1</Nombre>
                        <Unité>cpr</Unité>
                    </Quantité_composant_prescrite>
                </Composant_prescrit>
                <Elément_posologie>
                    <Fréquence_structurée>
                        <Frq_échelle>4</Frq_échelle>
                        <Frq_multiplicité>3</Frq_multiplicité>
                        <Frq_libellé>Trois fois par jour</Frq_libellé>
                    </Fréquence_structurée>
                    <Quantité>
                        <Nombre>1</Nombre>
                        <Unité>cpr</Unité>
                    </Quantité>
                </Elément_posologie>
            </Elément_prescr_médic>
        </Prescription>
    </M_Prescription_médicaments>
</Messages>
```
