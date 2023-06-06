wget -i urls.txt
gunzip *.gz
find . -name '*.csv' -exec sqlite3 data.db '.import -csv {} derivative_ticker' \;
rm *.csv
