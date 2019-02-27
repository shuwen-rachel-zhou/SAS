%macro zip(file=,n=);
   %if &&dummy&n = z %then %do;
      x compress "&file";
   %end;
   %else %if &&dummy&n = gz %then %do;
      x gzip "&file";
   %end;
   %else %do;
   %end;
%mend zip;

