## MAkes soft links and tobeshared and fastq

pid=P2001917

for i in "$@"
do
    ln -s /MG/SHARED/ANALYSIS/DEMUX/$i/FASTQ/$pid/* .
done


### Set variables without dollar in line no. 3
### While using those variables, use dollar
