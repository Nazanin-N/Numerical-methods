format long
clc
clear
syms x
n=input('How many repeat would you like:\n');
d= 1:n ;
xx=input('Enter the fixed point:\n');
F=input('Enter the function:\n');
f=diff(F);
for i=1:n
    xx=xx-(subs(F,xx)/(subs(f,xx)));
    d(i)=xx;
end
i= 1:n;
y=[i' d'];
disp('           n                   x');
disp(y);
