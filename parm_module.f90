        MODULE parm
        IMPLICIT NONE

        REAL*8,PARAMETER::cv=2.99d+10, au_t=2.42d-17, ec=27.211324570273d0
        REAL*8,PARAMETER::me=9.1109d-31
        REAL*8,PARAMETER::na_2_one=1.66d-24
        REAL*8,PARAMETER::pi=4.d0*DATAN(1.d0)
        REAL*8,PARAMETER::D_HF=0.225d0,&
                          a_hf=1.174d0,M_HF=1744.59d0,om_hf=4138.d0

        REAL*8,PARAMETER::xe=1.7329d0,d1=0.33d0

        INTEGER,PARAMETER::neq=2,lenwrk=32*neq
        INTEGER,PARAMETER::method=3,ntraj=100,iter=100000
        REAL*8,PARAMETER::t_fact=41.34137d0 ! conversion factor: fs to a.u. of time
        REAL*8,PARAMETER::tstart=0.d0,tend=500*(2.0*pi),tol=1.d-8

        !! Parameters for Dimensionless Hamiltonian
        REAL*8,PARAMETER::P0=4.2d6 !in W
        REAL*8,PARAMETER::kappa=1.2d0,hbar=1.d0 !in au 
        REAL*8,PARAMETER::epsiln=0.7d0,om_l=1.d8 !in cm-1 
        REAL*8,PARAMETER::gamma_c=10*om_hf,c=3.0d10
        REAL*8,PARAMETER::h=6.626d-34  !in J.s
        REAL*8,PARAMETER::fourpiepsiln0=1.d0,vc=100.d0 !A^3
        REAL*8,PARAMETER::dalpha_dx=5.70d0,om_c=3966.d0/219474.63d0
        REAl*8,PARAMETER::amu_2_au=1836.d0,ang_2_au=1.889d0 
        REAL*8,PARAMETER::cm1_2_au=219474.63d0

        END MODULE
