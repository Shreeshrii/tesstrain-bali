# tesstrain-bali

Finetune Training and OCR evaluation of Tesseract 5.0.0 Alpha for Balinese script using
 [tesstrain Training workflow for Tesseract 4 as a Makefile](https://github.com/tesseract-ocr/tesstrain). Certain file locations and scripts have been modified compared to source repos.

OCR evaluation is done using [ISRI Analytic Tools for OCR Evaluation with UTF-8 support](https://github.com/eddieantonio/ocreval) and  and [The ocrevalUAtion tool](https://sites.google.com/site/textdigitisation/ocrevaluation).

## [bali1 - Balinese script - Version 1](https://github.com/Shreeshrii/tesstrain-bali/releases/tag/best_bali1)

Replace the top layer training was done using [five Balinese Unicode fonts](https://github.com/Shreeshrii/tesstrain-bali/blob/best_bali1/langdata/bali.fontslist.txt) and using [jav1.traineddata](https://github.com/Shreeshrii/tessdata_jav_java/blob/master/tessdata_best/jav1.traineddata) as the Start_Model to continue from.

### Training Steps (links to files as of Version 1)

* Make [training text](https://github.com/Shreeshrii/tesstrain-bali/blob/best_bali1/langdata/bali.training_text)
* List [available fonts that can render the training text](https://github.com/Shreeshrii/tesstrain-bali/blob/best_bali1/langdata/bali.fontslist.txt)
