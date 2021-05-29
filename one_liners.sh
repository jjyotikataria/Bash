## Read a file and print its contents linewise

while read -r line; do echo "$line"; done < com.sh

## Use arguments as inputs in the script ## $1 = pid (without P)  ## $2 = Path till the TOBESHARED (inside things will be uploaded to the FTP)

perl upload.pl --projectid $1 --folder $2/'*' --loadmd FTP > dataupload.log &

## Do specific action for example wc -l for a a certain set of files

for i in $(ls -lrth *A3SS* | awk '{print $9}') ; do  wc -l $i ; done

## To do some replacement in a certain extension of files

for i in $(ls *.MATS.JC.txt); do sed  "s/ENSG000//g" $i; done | less

## To create a backup while using sed

sed -i.bak 's/foo/linux/g' file.txt

## Print the no. of columns in the files with file names

for i in $(ls *.JC.txt); do echo $i ;head -1 $i | awk '{print NF}' ; done

## To take header from the file and then filter with a criteria

cat <(head -n1 RI.MATS.JC.txt) <(awk -F "\t" '{if (($13 + $14) > 10 ) print}' RI.MATS.JC.txt) > RI.MATS.JC.filtered.txt1

## tr operator
G1=LN1,LN2,LN3

echo $G1 | tr "," " "

LN1 LN2 LN3

##
