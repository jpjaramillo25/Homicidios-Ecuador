

use "C:\Users\jpjar\OneDrive\Desktop\Asamblea MP\dif en dif ecuador y colombia.dta", clear


*cambio estructural gobiernos

xtreg lnhom_rate gob_gl gob_lm i.anio i.codprov, robust

outreg2 using dif_dif.doc, replace ctitle(LnHomicide_rate) keep(c.gob_gl##c.lndrogaco_l1 gob_lm frontera ecuador i.puertos)


*modelo controles
xtreg lnhom_rate gob_gl gob_lm frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(LnHomicide_rate) keep(c.gob_gl##c.lndrogaco_l1 gob_lm frontera ecuador i.puertos)


*modelo controles 2
xtreg lnhom_rate gob_gl gob_lm lndrogaco_l1 frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(LnHomicide_rate) keep(c.gob_gl##c.lndrogaco_l1 gob_lm frontera ecuador i.puertos)


*modelo interactivo
xtreg lnhom_rate c.gob_gl##c.lndrogaco_l1 gob_lm frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(LnHomicide_rate) keep(c.gob_gl##c.lndrogaco_l1 gob_lm frontera ecuador i.puertos)



*************reestringido

keep if frontera == 1

xtreg lnhom_rate gob_gl gob_lm i.anio i.codprov, robust

outreg2 using dif_dif.doc, replace ctitle(LnHomicide_rate) keep(c.gob_gl##c.lndrogaco_l1 gob_lm frontera ecuador i.puertos)


*modelo controles
xtreg lnhom_rate gob_gl gob_lm frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(LnHomicide_rate) keep(c.gob_gl##c.lndrogaco_l1 gob_lm frontera ecuador i.puertos)


*modelo controles 2
xtreg lnhom_rate gob_gl gob_lm lndrogaco_l1 frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(LnHomicide_rate) keep(c.gob_gl##c.lndrogaco_l1 gob_lm frontera ecuador i.puertos)


*modelo interactivo
xtreg lnhom_rate c.gob_gl##c.lndrogaco_l1 gob_lm frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(LnHomicide_rate) keep(c.gob_gl##c.lndrogaco_l1 gob_lm frontera ecuador i.puertos)


use "C:\Users\jpjar\OneDrive\Desktop\Asamblea MP\dif en dif ecuador y colombia.dta", clear



*robustness check


*cambio estructural en 2019

*modelo base
xtreg lnhom_rate i.cambioec_2019 i.anio i.codprov, robust

outreg2 using dif_dif.doc, replace ctitle(LnHomicide_rate) keep(i.cambioec_2019##c.lndrogaco_l1 frontera ecuador i.puertos)


*modelo controles
xtreg lnhom_rate i.cambioec_2019 frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(LnHomicide_rate) keep(i.cambioec_2019##c.lndrogaco_l1 frontera ecuador i.puertos)


*modelo controles 2
xtreg lnhom_rate i.cambioec_2019 c.lndrogaco_l1 frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(LnHomicide_rate) keep(i.cambioec_2019##c.lndrogaco_l1 frontera ecuador i.puertos)


*modelo interactivo
xtreg lnhom_rate i.cambioec_2019##c.lndrogaco_l1 frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(LnHomicide_rate) keep(i.cambioec_2019##c.lndrogaco_l1 frontera ecuador i.puertos)


**********************************************
*cambio estructural en 2020

*modelo base
xtreg lnhom_rate i.cambioec_2020 i.anio i.codprov, robust

outreg2 using dif_dif.doc, replace ctitle(LnHomicide_rate) keep(i.cambioec_2020##c.lndrogaco_l1 frontera ecuador i.puertos)


*modelo controles
xtreg lnhom_rate i.cambioec_2020 frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(LnHomicide_rate) keep(i.cambioec_2020##c.lndrogaco_l1 frontera ecuador i.puertos)


*modelo controles 2
xtreg lnhom_rate i.cambioec_2020 c.lndrogaco_l1 frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(LnHomicide_rate) keep(i.cambioec_2020##c.lndrogaco_l1 frontera ecuador i.puertos)


*modelo interactivo
xtreg lnhom_rate i.cambioec_2020##c.lndrogaco_l1 frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(LnHomicide_rate) keep(i.cambioec_2020##c.lndrogaco_l1 frontera ecuador i.puertos)


***********************************************

*cambio estructural en 2021

*modelo base
xtreg lnhom_rate i.cambioec_2021 i.anio i.codprov, robust

outreg2 using dif_dif.doc, replace ctitle(LnHomicide_rate) keep(i.cambioec_2021##c.lndrogaco_l1 frontera ecuador i.puertos)


*modelo controles
xtreg lnhom_rate i.cambioec_2021 frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(LnHomicide_rate) keep(i.cambioec_2021##c.lndrogaco_l1 frontera ecuador i.puertos)


*modelo controles 2
xtreg lnhom_rate i.cambioec_2021 c.lndrogaco_l1 frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(LnHomicide_rate) keep(i.cambioec_2021##c.lndrogaco_l1 frontera ecuador i.puertos)


*modelo interactivo
xtreg lnhom_rate i.cambioec_2021##c.lndrogaco_l1 frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(LnHomicide_rate) keep(i.cambioec_2021##c.lndrogaco_l1 frontera ecuador i.puertos)
