#!/bin/bash

for m in 16and7plays_16LM 16and7plays_36LM 16plays_36LM
do
    #cat ascii.romeojuliet_tokenized_lower_modern.1 | ~/mt/mosesdecoder/moses-cmd/src/moses -f ~/Shakespere/models/Translators/${m}/model/alan_moses.ini > ${m}.1 2> err.out
    #cat ascii.romeojuliet_tokenized_lower_modern.1 | ~/mt/mosesdecoder/moses-cmd/src/moses -f ~/Shakespere/models/Translators/${m}/model/alan_moses_mert.ini > ${m}_mert.1 2> err.out
    #cat ascii.romeojuliet_tokenized_lower_modern.2 | ~/mt/mosesdecoder/moses-cmd/src/moses -f ~/Shakespere/models/Translators/${m}/model/alan_moses.ini > ${m}.2 2> err.out
    #cat ascii.romeojuliet_tokenized_lower_modern.2 | ~/mt/mosesdecoder/moses-cmd/src/moses -f ~/Shakespere/models/Translators/${m}/model/alan_moses_mert.ini > ${m}_mert.2 2> err.out

    echo ${m}.1
    ../../Moses/tools/moses/scripts/generic/multi-bleu.perl ascii.romeojuliet_tokenized_lower_original < ${m}.1 | cut -d ',' -f1
    python ../python/PINC_document.py ascii.romeojuliet_tokenized_lower_modern.1 ${m}.1
    echo ${m}_mert.1
    ../../Moses/tools/moses/scripts/generic/multi-bleu.perl ascii.romeojuliet_tokenized_lower_original < ${m}_mert.1 | cut -d ',' -f1
    python ../python/PINC_document.py ascii.romeojuliet_tokenized_lower_modern.1 ${m}_mert.1
    echo ${m}.2
    ../../Moses/tools/moses/scripts/generic/multi-bleu.perl ascii.romeojuliet_tokenized_lower_original < ${m}.2 | cut -d ',' -f1
    python ../python/PINC_document.py ascii.romeojuliet_tokenized_lower_modern.2 ${m}.2
    echo ${m}_mert.2
    ../../Moses/tools/moses/scripts/generic/multi-bleu.perl ascii.romeojuliet_tokenized_lower_original < ${m}_mert.2 | cut -d ',' -f1
    python ../python/PINC_document.py ascii.romeojuliet_tokenized_lower_modern.2 ${m}_mert.2
done

#cat ascii.romeojuliet_tokenized_lower_modern.1 | ~/mt/mosesdecoder/moses-cmd/src/moses -f ~/Shakespere/models/Lexicons/singleword1/alan_moses.ini > singleword1.1 2> /dev/null
#cat ascii.romeojuliet_tokenized_lower_modern.2 | ~/mt/mosesdecoder/moses-cmd/src/moses -f ~/Shakespere/models/Lexicons/singleword1/alan_moses.ini > singleword1.2 2> /dev/null

#cat ascii.romeojuliet_tokenized_lower_modern.1 | ~/mt/mosesdecoder/moses-cmd/src/moses -f ~/Shakespere/models/Lexicons/singleword2/alan_moses1.ini > singleword2_1.1 2> /dev/null
#cat ascii.romeojuliet_tokenized_lower_modern.2 | ~/mt/mosesdecoder/moses-cmd/src/moses -f ~/Shakespere/models/Lexicons/singleword2/alan_moses1.ini > singleword2_1.2 2> /dev/null

#cat ascii.romeojuliet_tokenized_lower_modern.1 | ~/mt/mosesdecoder/moses-cmd/src/moses -f ~/Shakespere/models/Lexicons/singleword2/alan_moses2.ini > singleword2_2.1 2> /dev/null
#cat ascii.romeojuliet_tokenized_lower_modern.2 | ~/mt/mosesdecoder/moses-cmd/src/moses -f ~/Shakespere/models/Lexicons/singleword2/alan_moses2.ini > singleword2_2.2 2> /dev/null

#cat ascii.romeojuliet_tokenized_lower_modern.1 | ~/mt/mosesdecoder/moses-cmd/src/moses -f ~/Shakespere/models/Lexicons/phrase2/alan_moses.ini > phrase2.1 2> /dev/null
#cat ascii.romeojuliet_tokenized_lower_modern.2 | ~/mt/mosesdecoder/moses-cmd/src/moses -f ~/Shakespere/models/Lexicons/phrase2/alan_moses.ini > phrase2.2 2> /dev/null

echo singleword1.1
../../Moses/tools/moses/scripts/generic/multi-bleu.perl ascii.romeojuliet_tokenized_lower_original < singleword1.1 | cut -d ',' -f1
python ../python/PINC_document.py ascii.romeojuliet_tokenized_lower_modern.1 singleword1.1
echo singleword1.2
../../Moses/tools/moses/scripts/generic/multi-bleu.perl ascii.romeojuliet_tokenized_lower_original < singleword1.2 | cut -d ',' -f1
python ../python/PINC_document.py ascii.romeojuliet_tokenized_lower_modern.2 singleword1.2

echo singleword2_1.1
../../Moses/tools/moses/scripts/generic/multi-bleu.perl ascii.romeojuliet_tokenized_lower_original < singleword2_1.1 | cut -d ',' -f1
python ../python/PINC_document.py ascii.romeojuliet_tokenized_lower_modern.1 singleword2_1.1
echo singleword2_1.2
../../Moses/tools/moses/scripts/generic/multi-bleu.perl ascii.romeojuliet_tokenized_lower_original < singleword2_1.2 | cut -d ',' -f1
python ../python/PINC_document.py ascii.romeojuliet_tokenized_lower_modern.2 singleword2_1.2

echo singleword2_2.1
../../Moses/tools/moses/scripts/generic/multi-bleu.perl ascii.romeojuliet_tokenized_lower_original < singleword2_2.1 | cut -d ',' -f1
python ../python/PINC_document.py ascii.romeojuliet_tokenized_lower_modern.1 singleword2_2.1
echo singleword2_2.2
../../Moses/tools/moses/scripts/generic/multi-bleu.perl ascii.romeojuliet_tokenized_lower_original < singleword2_2.2 | cut -d ',' -f1
python ../python/PINC_document.py ascii.romeojuliet_tokenized_lower_modern.2 singleword2_2.2

echo phrase2.1
../../Moses/tools/moses/scripts/generic/multi-bleu.perl ascii.romeojuliet_tokenized_lower_original < phrase2.1 | cut -d ',' -f1
python ../python/PINC_document.py ascii.romeojuliet_tokenized_lower_modern.1 phrase2.1
echo phrase2.2
../../Moses/tools/moses/scripts/generic/multi-bleu.perl ascii.romeojuliet_tokenized_lower_original < phrase2.2 | cut -d ',' -f1
python ../python/PINC_document.py ascii.romeojuliet_tokenized_lower_modern.2 phrase2.2