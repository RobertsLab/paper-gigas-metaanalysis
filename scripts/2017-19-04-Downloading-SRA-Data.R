#### Downloading data from the SRA database ####

#In this script, I'll use samtools to download SRA run data from the NCBI SRA database.

SRA.list <- c("SRR5085013", "SRR5085014", "SRR5085015", "SRR5085016", "SRR5085017", "SRR5085018", "SRR546473", "SRR546474", "SRR546472", "SRR546471", "SRR1693528", "SRR1693531", "SRR1693532", "SRR1693534", "SRR1693537", "SRR1693538", "SRR1696820", "SRR1696826", "SRR1696827", "SRR942533", "SRR1696867", "SRR1697248", "SRR1696868", "SRR1045858", "SRR3742302", "SRR3742311", "SRR3742313", "SRR3742315", "SRR3742316", "SRR3742317", "SRR3742318", "SRR3742319", "SRR3742320", "SRR3742321", "SRR3742322", "SRR3742323", "SRR3742324", "SRR3742325", "SRR3742326", "SRR3742327", "SRR3742344", "SRR3742345", "SRR3742346", "SRR3742347", "SRR3742348") #Make a list of all SRA run codes for data I want to download

setwd("/Users/yaamini/Documents/paper-gigas-metaanalysis/data/methylation-SRA-data") #Set my working directory to a folder within my Github repository

for(i in 1:length(SRA.list)) #Create a for loop so each SRA run specified in "SRA.list" is downloaded as a .fastq file and zipped. 
  {
  
  system(paste0("/Users/Shared/Apps/sratoolkit.2.8.2-1-mac64/bin/fastq-dump" ), SRA.list[i])
  system(paste0("tar -czf ", SRA.list[i], ".fastq ", SRA.list.[i], ".fastq.tar.gz"))
  system(paste0("rm ", SRA.list[i], ".fastq"))
  
}