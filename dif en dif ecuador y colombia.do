

use "C:\Users\jpjar\OneDrive\Desktop\Asamblea MP\dif en dif ecuador y colombia.dta", clear


*rafael correa


xtreg lnhom_rate l.lnhom_rate gob_RCmeses i.anio i.codprov, robust

outreg2 using dif_dif.doc, replace ctitle(LnHomicide_rate) drop(i.anio i.codprov)


*modelo controles
xtreg lnhom_rate l.lnhom_rate gob_RCmeses frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(LnHomicide_rate) drop(i.anio i.codprov)


*modelo controles 2
xtreg lnhom_rate l.lnhom_rate gob_RCmeses lndrogaco_l1 frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(LnHomicide_rate) drop(i.anio i.codprov)


*modelo controles tasa homicidio

xtreg tasa_hom l.tasa_hom gob_RCmeses lndrogaco_l1 frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(Homicide_rate) drop(i.anio i.codprov)




*lenin moreno


xtreg lnhom_rate l.lnhom_rate gob_LMmeses i.anio i.codprov, robust

outreg2 using dif_dif.doc, replace ctitle(LnHomicide_rate) drop(i.anio i.codprov)


*modelo controles
xtreg lnhom_rate l.lnhom_rate gob_LMmeses frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(LnHomicide_rate) drop(i.anio i.codprov)


*modelo controles 2
xtreg lnhom_rate l.lnhom_rate gob_LMmeses lndrogaco_l1 frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(LnHomicide_rate) drop(i.anio i.codprov)


*modelo controles tasa homicidio

xtreg tasa_hom l.tasa_hom gob_LMmeses lndrogaco_l1 frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(Homicide_rate) drop(i.anio i.codprov)



*Guillermo Lasso


xtreg lnhom_rate l.lnhom_rate gob_GLmeses i.anio i.codprov, robust

outreg2 using dif_dif.doc, replace ctitle(LnHomicide_rate) drop(i.anio i.codprov)


*modelo controles
xtreg lnhom_rate l.lnhom_rate gob_GLmeses frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(LnHomicide_rate) drop(i.anio i.codprov)


*modelo controles 2
xtreg lnhom_rate l.lnhom_rate gob_GLmeses lndrogaco_l1 frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(LnHomicide_rate) drop(i.anio i.codprov)


*modelo controles tasa homicidio

xtreg tasa_hom l.tasa_hom gob_GLmeses lndrogaco_l1 frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(Homicide_rate) drop(i.anio i.codprov)



*respuesta a Manuel


xtreg lnhom_rate l.lnhom_rate gob_RCmeses lndrogaco_l1 lndroga frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, replace ctitle(Homicide_rate) drop(i.anio i.codprov)


xtreg lnhom_rate l.lnhom_rate gob_GLmeses lndrogaco_l1 lndroga frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(Homicide_rate) drop(i.anio i.codprov)



xtreg tasa_hom l.tasa_hom gob_RCmeses lndrogaco_l1 lndroga frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, replace ctitle(Homicide_rate) drop(i.anio i.codprov)


xtreg tasa_hom l.tasa_hom gob_GLmeses lndrogaco_l1 lndroga frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(Homicide_rate) drop(i.anio i.codprov)



*************reestringido volver a correr lo anterior

keep if frontera == 1

use "C:\Users\jpjar\OneDrive\Desktop\Asamblea MP\dif en dif ecuador y colombia.dta", clear



*modelo interactivo

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





*cambios estructurales perioodos e interactivos con cultivos de droga


*cambio estructural en 2019

*modelo base
xtreg lnhom_rate l.lnhom_rate i.cambioec_2019 i.anio i.codprov, robust

outreg2 using dif_dif.doc, replace ctitle(LnHomicide_rate) drop(i.anio i.codprov)


*modelo controles
xtreg lnhom_rate l.lnhom_rate i.cambioec_2019 frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(LnHomicide_rate) drop(i.anio i.codprov)


*modelo controles 2
xtreg lnhom_rate l.lnhom_rate i.cambioec_2019 c.lndrogaco_l1 frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(LnHomicide_rate) drop(i.anio i.codprov)


*modelo interactivo
xtreg lnhom_rate l.lnhom_rate i.cambioec_2019##c.lndrogaco_l1 frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(LnHomicide_rate) drop(i.anio i.codprov)

**********************************************
*cambio estructural en 2020

*modelo base
xtreg lnhom_rate l.lnhom_rate i.cambioec_2020 i.anio i.codprov, robust

outreg2 using dif_dif.doc, replace ctitle(LnHomicide_rate) drop(i.anio i.codprov)


*modelo controles
xtreg lnhom_rate l.lnhom_rate i.cambioec_2020 frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(LnHomicide_rate) drop(i.anio i.codprov)


*modelo controles 2
xtreg lnhom_rate l.lnhom_rate i.cambioec_2020 c.lndrogaco_l1 frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(LnHomicide_rate) drop(i.anio i.codprov)


*modelo interactivo
xtreg lnhom_rate l.lnhom_rate i.cambioec_2020##c.lndrogaco_l1 frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(LnHomicide_rate) drop(i.anio i.codprov)


***********************************************

*cambio estructural en 2021

*modelo base
xtreg lnhom_rate l.lnhom_rate i.cambioec_2021 i.anio i.codprov, robust

outreg2 using dif_dif.doc, replace ctitle(LnHomicide_rate) drop(i.anio i.codprov)



*modelo controles
xtreg lnhom_rate l.lnhom_rate i.cambioec_2021 frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(LnHomicide_rate) drop(i.anio i.codprov)



*modelo controles 2
xtreg lnhom_rate l.lnhom_rate i.cambioec_2021 c.lndrogaco_l1 frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(LnHomicide_rate) drop(i.anio i.codprov)



*modelo interactivo
xtreg lnhom_rate l.lnhom_rate i.cambioec_2021##c.lndrogaco_l1 frontera ecuador i.puertos i.anio i.codprov, robust

outreg2 using dif_dif.doc, append ctitle(LnHomicide_rate) drop(i.anio i.codprov)
