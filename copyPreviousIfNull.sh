#!/bin/bash
TARGET=$1
TNUM=`zcat $1 | wc -l`
if [ $TNUM == '0' ]; then
    echo "Copying previous result's header"
    cp ${TARGET%.*.vcf.gz}.vcf.gz $TARGET
fi
