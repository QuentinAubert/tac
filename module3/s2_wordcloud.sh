
#!/usr/bin/env bash

# Building a wordcloud based on one year of bulletins

YEAR=$1
cat data/txt/*_${YEAR}_*.txt > module3/${YEAR}.txt
python3 module3/filtering.py 
wordcloud_cli  --text module3/${YEAR}_keywords.txt 
wordcloud_cli  --imagefile module3/${YEAR}.png --width 2000 --height 1000
display module3/${YEAR}.png