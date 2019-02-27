filename msaname "/sasdev/jpark/msaname.txt";

data msaname;
   infile msaname delimiter='09'x;
   input msa$ msaname $52.;
   msaname = compress(msaname,"~");
run;
proc print data=msaname(obs=100);
run;
