# tesstrain-bali

Finetune Training and OCR evaluation of Tesseract 5.0.0 Alpha for Balinese script using
 [tesstrain Training workflow for Tesseract 4 as a Makefile](https://github.com/tesseract-ocr/tesstrain). Certain file locations and scripts have been modified compared to source repos.

OCR evaluation is done using [ISRI Analytic Tools for OCR Evaluation with UTF-8 support](https://github.com/eddieantonio/ocreval) and  and [The ocrevalUAtion tool](https://sites.google.com/site/textdigitisation/ocrevaluation).

## [best_bali1 - Balinese script - Version 1](https://github.com/Shreeshrii/tesstrain-bali/releases/tag/best_bali1)

Replace the top layer training was done using [five Balinese Unicode fonts](https://github.com/Shreeshrii/tesstrain-bali/blob/best_bali1/langdata/bali.fontslist.txt) and using [jav1.traineddata](https://github.com/Shreeshrii/tessdata_jav_java/blob/master/tessdata_best/jav1.traineddata) as the Start_Model to continue from.

### Training Steps (links to files as of Version 1)

* Make [training text](https://github.com/Shreeshrii/tesstrain-bali/blob/best_bali1/langdata/bali.training_text)
* List [available fonts that can render the training text](https://github.com/Shreeshrii/tesstrain-bali/blob/best_bali1/langdata/bali.fontslist.txt)
* Update fonts directory unicodefontdir in [txt2lstmf.sh](https://github.com/Shreeshrii/tesstrain-bali/blob/best_bali1/txt2lstmf.sh)
* Run [txt2lstmf.sh](https://github.com/Shreeshrii/tesstrain-bali/blob/best_bali1/txt2lstmf.sh) to create the images, ground truth and lstmf files in [gt/bali](https://github.com/Shreeshrii/tesstrain-bali/tree/best_bali1/gt/bali)
* Run [trainlayer.sh](https://github.com/Shreeshrii/tesstrain-bali/blob/best_bali1/trainlayer.sh) to download the starting ara.traineddata and other files and start the training via makefile
* Run [checkpointeval.sh](https://github.com/Shreeshrii/tesstrain-bali/blob/best_bali1/checkpointeval.sh) to evaluate the accuracy of different checkpoints.
* Resulting traineddata file, which can be used as starting model for further training, is at [best_bali1. traineddata](https://github.com/Shreeshrii/tesstrain-bali/blob/best_bali1. traineddata).

### Evaluation Results

| Font  	|  Accuracy 	|
|---	|---	|
|Quivira|   83.30%	|
|Segoe_UI_Historic|   81.60% 	|

See [reports](https://github.com/Shreeshrii/tesstrain-bali/blob/best_bali1/reports/checkpointeval.txt) for more details. 
