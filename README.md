KISTI snakemake pipelines

$SNAKEMAKE_PATH/snakemake -j --cluster "qsub -l 'walltime=720:00:00,nodes=1:ppn={threads}:{cluster.queue}' -j oe -e qlog/ -o qlog/ -M $MAIL_ADDR -m a"
