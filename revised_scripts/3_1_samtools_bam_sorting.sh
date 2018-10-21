#!/bin/sh
#TODO: consider doing other steps here like rmdup, filtering out certain bit sequences in view
for bam in ~/Project_1/2_BWA_Output/*.bam;
do
	prefix=$(basename $bam | sed 's/.bam//g')
	samtools sort ~/Project_1/2_BWA_Output/$prefix\.bam 1>~/Project_1/3_SamTools_Output/$prefix\.sorted.bam
done