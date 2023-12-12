

#!/bin/bash

f1=$1
f2=$2
out=$3

perl A02a_demultiplex_fastq.pl $f1 $f2 A02a_cellbarcodes_subset1.fa $out
