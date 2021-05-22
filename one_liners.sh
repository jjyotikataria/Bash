## Read a file and print its contents linewise

while read -r line; do echo "$line"; done < com.sh

## Use arguments as inputs in the script ## $1 = pid (without P)  ## $2 = Path till the TOBESHARED (inside things will be uploaded to the FTP)

perl upload.pl --projectid $1 --folder $2/'*' --loadmd FTP > dataupload.log &

## Do specific action for example wc -l for a a certain set of files

for i in $(ls -lrth *A3SS* | awk '{print $9}') ; do  wc -l $i ; done

##
