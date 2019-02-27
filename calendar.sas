/************************************************************************************/
/* PROGRAM NAME		: calendar.sas                                              */
/* AUTHOR		: Jin Won Park                                              */
/* PURPOSE		: Calendar Macro Function. Saves date vairables in different*/
/*			  formats.                                                  */
/* EXAMPLES		: date0 = 201101					    */
/*			  yyyy0 = 2011						    */
/*			  yy0 = 11						    */
/*			  mm0 = 01						    */
/*			  mmm0 = jan						    */
/*			  mon0 = January					    */
/************************************************************************************/

%macro calendar(date=,n=);

%global date0 yyyy0 mm0;

%let date0 = &date;
%let yyyy0 = %substr(&date,1,4);
%let mm0 = %substr(&date,5,2);

%do i = 1 %to &n;
   %global mm&i date&i yyyy&i;
   %let prev = %eval(&i-1);
   %let mm&i = %eval(&&mm&prev - 1);
   %let yyyy&i = %eval(&&yyyy&prev);

   %if &&mm&i = 0 %then %do;
      %let mm&i = 12;
      %let yyyy&i = %eval(&&yyyy&prev - 1);
   %end;
   %let date&i = %eval(&&yyyy&i*100+&&mm&i);
%end;

%do i = 0 %to &n;
   %global mmm&i mon&i yy&i n&i;
   %if &&mm&i = 1 %then %do;
      %let mmm&i = jan;
      %let mon&i = January;
   %end;
   %if &&mm&i = 2 %then %do;
      %let mmm&i = feb;
      %let mon&i = February;
   %end;
   %if &&mm&i = 3 %then %do;
      %let mmm&i = mar;
      %let mon&i = March;
   %end;
   %if &&mm&i = 4 %then %do;
      %let mmm&i = apr;
      %let mon&i = April;
   %end;
   %if &&mm&i = 5 %then %do;
      %let mmm&i = may;
      %let mon&i = May;
   %end;
   %if &&mm&i = 6 %then %do;
      %let mmm&i = jun;
      %let mon&i = June;
   %end;
   %if &&mm&i = 7 %then %do;
      %let mmm&i = jul;
      %let mon&i = July; 
   %end;
   %if &&mm&i = 8 %then %do;
      %let mmm&i = aug;
      %let mon&i = August; 
   %end;
   %if &&mm&i = 9 %then %do;
      %let mmm&i = sep;
      %let mon&i = September; 
   %end;
   %if &&mm&i = 10 %then %do;
      %let mmm&i = oct;
      %let mon&i = October;
   %end;
   %if &&mm&i = 11 %then %do;
      %let mmm&i = nov;
      %let mon&i = November;
   %end;
   %if &&mm&i = 12 %then %do;
      %let mmm&i = dec;
      %let mon&i = December;
   %end;
   %let yy&i = %substr(&&yyyy&i,3,2);
   %let n&i = &i;
%end;

%mend calendar;
