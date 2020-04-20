function  var = fun_inf_lambda(~,y,k1,k2,k_m1,k_m2,delta,s1,s2,M0,g,...
                        beta,delta_I,p,c,kappa,q1,q2,...
                        kappa_a,mu,rho, A_ast)

var = zeros(7,1);
var(1) = g * (1 - (y(1) + y(2) + y(3))/M0) * y(1) -   k1/(1 + s1*(y(3)/M0))*y(1) - k2 * (1 + s2* (y(2)/M0))*y(1)...
            + k_m2 * y(3) + k_m1 * y(2) - q1 * y(5) * y(1) - q2 * y(6) * y(1); %M0
var(2) =  k1/(1 + s1*(y(3)/M0))*y(1) - k_m1 * y(2) - delta*y(2) + q1 * y(5) * y(1) + q2 * y(6) * y(1); %M1
var(3) = k2 * (1 + s2* (y(2)/M0))*y(1) - k_m2 * y(3) - delta * y(3); %M2

var(4) = -beta * y(4) * y(6); %T
var(5) = beta * y(4) * y(6) - delta_I * y(5); %I
var(6) = p * y(5) - c * y(6) - kappa * y(2) * y(6) - kappa_a * y(7) * y(6); %V

var(7) = mu * y(2) + rho * y(7) * (1 - y(7)/A_ast); %A 

end 


