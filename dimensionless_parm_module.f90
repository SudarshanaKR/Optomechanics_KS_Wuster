        MODULE dimensionless_parm
        USE parm
        CONTAINS

        FUNCTION hbar_eff_function()
        USE parm
        IMPLICIT NONE
        REAL*8::hbar_eff_function,value1,sigma,alpha0_sq,g0
        
        alpha0_sq = 8.d0*P0/(2.d0*pi*h*om_l*gamma_c*(c**2))
        sigma = DSQRT(hbar*cm1_2_au/(2.d0*M_HF*om_hf))
        g0 = sigma*(om_c*dalpha_dx*4.d0*pi*ang_2_au) &
                /(fourpiepsiln0*vc*amu_2_au)
        value1 = (sigma*hbar*g0*(alpha0_sq)/D_HF)*DSQRT(kappa)
        hbar_eff_function = value1**2
        
        !PRINT*,alpha0_sq        

        END FUNCTION

        FUNCTION D_eff_function()
        USE parm
        IMPLICIT NONE
        REAL*8::D_eff_function,value1,sigma,alpha0_sq,g0

        alpha0_sq = 8.d0*P0/(2.d0*pi*h*om_l*gamma_c*(c**2))
        sigma = DSQRT(hbar*cm1_2_au/(2.d0*M_HF*om_hf))
        g0 = sigma*(om_c*dalpha_dx*4.d0*pi*ang_2_au) &
                /(fourpiepsiln0*vc*amu_2_au)
        value1 = (sigma**4)*(kappa**2)*M_HF*(g0*(alpha0_sq))**2
        D_eff_function = value1/D_HF

        END FUNCTION

        FUNCTION L_eff_function()
        USE parm
        IMPLICIT NONE
        REAL*8::L_eff_function,value1,sigma,alpha0_sq,g0

        alpha0_sq = 8.d0*P0/(2.d0*pi*h*om_l*gamma_c*(c**2))
        sigma = DSQRT(hbar*cm1_2_au/(2.d0*M_HF*om_hf))
        g0 = sigma*(om_c*dalpha_dx*4.d0*pi*ang_2_au) &
                /(fourpiepsiln0*vc*amu_2_au)
        value1 = D_HF/(hbar*g0*(alpha0_sq))
        L_eff_function = value1

        END FUNCTION

        END MODULE



