File/Model = prova1.adm
SIMULATE/DYNAMIC,DURATION=3,STEPS=300
save/system, file=prova.sav

File/Model = prova1.adm
INTEGRATOR/GSTIFF , MAXIT=2
SIMULATE/DYNAMIC,DURATION=3,STEPS=3000
save/system, file=prova1.sav