#!/bin/bash
#SBATCH --time=100:15:00
#SBATCH --mem=32GB
source activate SEMCPU
python3 semtagger.py --train ../../pmb/pmb_sem_tok/train.tt --dev ../../pmb/pmb_sem_tok/dev.txt --test ../../pmb/pmb_sem_tok/gold.txt  --embeddings /data/s3094723/embeddings/en/lexvec.commoncrawl.300d.W.pos.vectors.csv   --bsize 50  --bn  --chars --epochs 10 --words --rnn --dropout 0.5 --early-stopping > results5.txt

