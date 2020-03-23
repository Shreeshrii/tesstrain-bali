#!/bin/bash
MODEL=baliLayer
my_files=$(ls test/{*.jpgx,*.tifx,*.png})
bash maketessdata.sh
rm test/ALL*
for my_file in ${my_files}; do
    for lang in $MODEL   ; do
            echo -e "\n ***** " $my_file  ${my_file%.*} "LANG" $lang   "****"
            OMP_THREAD_LIMIT=1 time -p tesseract $my_file  "${my_file%.*}-$lang" --oem 1 --psm 6 -l "$lang" --tessdata-dir data --dpi 300 -c preserve_interword_spaces=1 -c page_separator=''
            # cat "${my_file%.*}-$lang".txt >> test/ALL-$lang.txt
            # cat "${my_file%.*}".gt.txt >> test/ALL-$lang-gt.txt
    done
done
# accuracy test/ALL-$MODEL-gt.txt test/ALL-$MODEL.txt  > test/ALL-$MODEL-accuracy.txt
echo "DONE"
