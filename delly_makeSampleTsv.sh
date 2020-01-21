#!/bin/bash
CANCER=$2
POSTPROC=$1
BAMLIST=$(find mapping/ -name "*$POSTPROC.bam")
for FULLNAME in $BAMLIST; do
    #FULLNAME="mapping/gatk_b37/mem/JKL-LU-78-cancer-wgs-ILLUMINA.fmarked.realigned.recal.bam"
    NAME=${FULLNAME##*/}
    ID=${NAME%%.*}
    case "$ID" in
          *$CANCER*) echo -e $ID "\tcontrol" ;;
          *)  echo -e $ID "\ttumor";;
    esac
done
