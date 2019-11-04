for n=1:Num

    alpha(n,1)=zi_1(n,1)*n*exp(-n*H);
    alpha1(n,1)=zi_2(n,1)*n*exp(-n*H);
    beta(n,1)=zi_3(n,1)*n*exp(-n*H);
    gamma(n,1)=zi_4(n,1)*n*exp(-n*H);
    beta1(n,1)=zi_5(n,1)*n*exp(-n*H);
    gamma1(n,1)=zi_6(n,1)*n*exp(-n*H);
    delta(n,1)=zi_7(n,1)*n*exp(-n*H);
    delta1(n,1)=zi_8(n,1)*n*exp(-n*H);
    lembda1(n,1)=zi_9(n,1)*n*exp(-n*H);
    lembda2(n,1)=zi_10(n,1)*n*exp(-n*H);
    lembda3(n,1)=zi_11(n,1)*n*exp(-n*H);
    
    u_i(n+1)=u_i(n)+H*(omega-alpha(n,1)*u_i(n)*p_i(n)-alpha1(n,1)*u_i(n)*s_i(n)-omega*u_i(n)-lembda1(n,1)*w_i(n)*u_i(n));
    p_i(n+1)=p_i(n)+H*(alpha(n,1)*u_i(n)*p_i(n)+beta1(n,1)*s_i(n)*p_i(n)+delta(n,1)*h_i(n)*p_i(n)-beta(n,1)*p_i(n)*s_i(n)
    -gamma(n,1)*p_i(n)*h_i(n)-omega*p_i(n)+lembda1(n,1)*w_i(n)*u_i(n)+lembda2(n,1)*c_i(n)*s_i(n)+lembda3(n,1)*g_i(n)*h_i(n));
    s_i(n+1)=s_i(n)+H*(alpha1(n,1)*u_i(n)*s_i(n)+beta(n,1)*p_i(n)*s_i(n)+delta1(n,1)*h_i(n)*s_i(n)-beta1(n,1)*s_i(n)*p_i(n)
    -gamma1(n,1)*s_i(n)*h_i(n)-omega*s_i(n)-lembda2(n,1)*c_i(n)*s_i(n));
    h_i(n+1)=h_i(n)+H*(gamma(n,1)*p_i(n)*h_i(n)+gamma1(n,1)*s_i(n)*h_i(n)-delta(n,1)*h_i(n)*p_i(n)-delta1(n,1)*h_i(n)*s_i(n)
    -omega*h_i(n)-lembda3(n,1)*g_i(n)*h_i(n));

    u1_i(n+1)=u1_i(n)+H*(omega-alpha(n,1)*u1_i(n)*p1_i(n)-alpha1(n,1)*u1_i(n)*s1_i(n)-omega*u1_i(n)-lembda1(n,1)*w1_i*u1_i(n));
    p1_i(n+1)=p1_i(n)+H*(alpha(n,1)*u1_i(n)*p1_i(n)+beta1(n,1)*s1_i(n)*p1_i(n)+delta(n,1)*h1_i(n)*p1_i(n)-beta(n,1)*p1_i(n)*s1_i(n)-gamma(n,1)*p1_i(n)*h1_i(n)-omega*p1_i(n)+lembda1(n,1)*w1_i*u1_i(n)+lembda2(n,1)*c1_i*s1_i(n)+lembda3(n,1)*g1_i*h1_i(n));
    s1_i(n+1)=s1_i(n)+H*(alpha1(n,1)*u1_i(n)*s1_i(n)+beta(n,1)*p1_i(n)*s1_i(n)+delta1(n,1)*h1_i(n)*s1_i(n)-beta1(n,1)*s1_i(n)*p1_i(n)-gamma1(n,1)*s1_i(n)*h1_i(n)-omega*s1_i(n)-lembda2(n,1)*c1_i*s1_i(n));
    h1_i(n+1)=h1_i(n)+H*(gamma(n,1)*p1_i(n)*h1_i(n)+gamma1(n,1)*s1_i(n)*h1_i(n)-delta(n,1)*h1_i(n)*p1_i(n)-delta1(n,1)*h1_i(n)*s1_i(n)-omega*h1_i(n)-lembda3(n,1)*g1_i*h1_i(n));
    
end

   figure(1)
   plot(t*H,u_i,'-k',t*H,p_i,'-b',t*H,s_i,'-r',t*H,h_i,'-m')
   grid on;
   legend('u_i(t)','p_i^d(t)','n_i^d(t)','h_i(t)')
