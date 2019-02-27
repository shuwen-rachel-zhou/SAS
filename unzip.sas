

%macro unzip(file=,n=);
   %global dummy&n;
   %if %sysfunc(fileexist(&file..Z)) %then %do;
      x uncompress "&file";
      %let dummy&n = z;
   %end;
   %else %if %sysfunc(fileexist(&file..gz)) %then %do;
      x gunzip "&file";
      %let dummy&n = gz;
   %end;
   %else %do;
   %end;
%mend unzip;
