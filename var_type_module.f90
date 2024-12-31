        MODULE var_type
        USE parm
        IMPLICIT NONE
        
        REAL*8,DIMENSION(neq)::ystart,ygot,ypgot,ymax,x
        REAL*8,DIMENSION(:,:),ALLOCATABLE::e1,e_cav,lm,dse&
                        ,act_hf,act_cav,rho1,rho2,hf,energy,rho
        REAL*8::avg_e1, avg_ecav, avg_lm, avg_dse &
                        , avg_jhf,avg_jcav,rho_sum1,rho_sum2,avg_energy
        REAL*8::work(lenwrk),thres(neq),t
        REAL*8::eng,ener1,zmass,stepsize,twant,tgot,sigma1_c,sigma2_c
        REAL*8::hstart,e0,energy0,sigma1_hf &
                        ,sigma2_hf,rho_qx,rho_px

        REAL*8::r,dd0,d0,dd,d,lamda,lyaexp,etot,om1,om2,rho_qc,rho_pc
        REAl*8::x_hf,x_c,p_hf,p_c,x_s,y_s,px_s,&
                py_s,e3,e2,&
                pxx,pyy,qxx,qyy,x0,y0,px0,py0
        REAL*8::dx_VHF,ddx_VHF,dx_mu,ddx_mu,mu,th_HF,th_Cav,xg,xg1

        REAL*8::qx,qc,px,pc,x1,x2,x3,x4,x5,x6,x7,norm,maxd0
        INTEGER:: uflag,i,j,k,diss_traj,n,m,l
        LOGICAL:: errass,mesage
        REAL*8::hbar_eff,D_eff,L_eff,delta
        REAL*8::E_HF,KE,PE

        CHARACTER*1 task
        CHARACTER(len=80):: fmt1

        END MODULE
