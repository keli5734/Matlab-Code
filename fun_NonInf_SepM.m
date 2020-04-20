function  var = fun_NonInf_SepM(~,y,k1,k2,k_m1,k_m2,delta,s1,s2,M0,g)

var = zeros(3,1);

var(1) = g * (1 - (y(1) + y(2) + y(3))/M0) * y(1) - k1 /(1 + s1*(y(3)/M0))*y(1) - k2 * (1 + s2* (y(2)/M0))*y(1) + k_m2 * y(3) + k_m1 * y(2);
var(2) = k1/(1 + s1*(y(3)/M0))*y(1) - k_m1 * y(2) - delta * y(2);
var(3) =  k2 * (1 + s2* (y(2)/M0))*y(1) - k_m2 * y(3) - delta * y(3);


end 
