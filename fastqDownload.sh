#!/bin/bash

#downloading using ena browser ftp link
#assuming you are in rawReads folder
#input SRP id  
SRP_id=SRP194619

#make a directory with the SRP id and cd into that directory
mkdir ${SRP_id}
cd ${SRP_id}

for i in `seq 683 692`;
do
	#for downloading .sra file
	#wget ftp://ftp.sra.ebi.ac.uk/vol1/srr/SRR900/003/SRR9004${i};
  #for downloading fastq file
	wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR900/003/SRR9004${i}/SRR9004${i}_1.fastq.gz;
	wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR900/003/SRR9004${i}/SRR9004${i}_2.fastq.gz;
done

#unzipping it
for g in *.gz; do gunzip $g; done
  
cd ..
