format long
clc
clear
syms x
n=input('How many repeat would you like:\n');
d= 1:n ;
d(1)=input('Enter the fixed point 1:\n');
d(2)=input('Enter the fixed point 2:\n');
F=input('Enter the function:\n');
for i=1:(n-2)
  d(i+2)=(d(i)*subs(F,d(i+1))-d(i+1)*subs(F,d(i)))/(subs(F,d(i+1))-subs(F,d(i)));
end
for k=1:n
    fprintf('x%g = %4.16f \n',k,d(k));
end
