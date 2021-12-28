## sh ftp.sh 123456 TOBESHARED_PATH

## $1 = pid

## $2 = Path till the TOBESHARED

perl ftp.pl --projectid $1 --folder $2/'*' --loadmd FTP
