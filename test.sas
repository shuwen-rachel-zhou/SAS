option mlogic;

%include "/programs/users/jpark/library/unzip.sas";
%include "/programs/users/jpark/library/zip.sas";

%unzip(file=/programs/users/jpark/library/test1.txt,n=1);
%unzip(file=/programs/users/jpark/library/test2.txt,n=2);

%macro main;

%put Main SAS Code;
%put Main SAS Code;
%put Main SAS Code;
%put Main SAS Code;
%put Main SAS Code;
%put Main SAS Code;
%put Main SAS Code;
%put Main SAS Code;
%put Main SAS Code;
%put Main SAS Code;
%put Main SAS Code;
%put Main SAS Code;
%put Main SAS Code;
%put Main SAS Code;
%put Main SAS Code;
%put Main SAS Code;
%put Main SAS Code;
%put Main SAS Code;

%mend main;
%main;

%zip(file=/programs/users/jpark/library/test1.txt,n=1);
%zip(file=/programs/users/jpark/library/test2.txt,n=2);

