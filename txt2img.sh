#!/bin/bash
# SINGLE line images using kraken
# conda activate kraken
# nohup bash txt2img.sh nospace   > txt2img.log & 
MODEL=$1
GTDIR=gt
unicodefontdir=/home/ubuntu/.fonts/myfonts
traininginput=langdata/$MODEL.training_text
fontlist=langdata/$MODEL.fontslist.txt
trainingtext=/tmp/kraken-train.txt
mkdir -p $GTDIR
 while IFS= read -r fontname
     do
        echo "$fontname"
        python shuffle.py 1 < ${traininginput} > ${trainingtext} 
        ketos linegen  -u NFC  --disable-degradation -f "${fontname}" -o $GTDIR/$MODEL-"${fontname// /_}" ${trainingtext}
        # python shuffle.py 2 < ${traininginput} > ${trainingtext} 
        # ketos linegen  -u NFC  -f "${fontname}" -o $GTDIR/"${fontname// /_}" ${trainingtext}
    done < "$fontlist"
