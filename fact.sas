%macro fact(n=);
%global fact;
%let fact = 1;

%do i = 1 %to &n;
   %let fact = %eval(&fact*&i);
%end;

%mend fact;
