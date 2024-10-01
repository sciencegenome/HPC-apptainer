# phylogenomics-apptainer 

- a apptainer for the phylogenomics
- it contains all the applications combined in a single container for the phylogenomics.
- it incldues orthofinder, astral, trimal, alignmentGO, raxml and clipkit. 
- all the applications required for the genome analysis and genome or gene based phylogenomics.  

```
apptainer exec phylogenomics.def

Given an folder of the fasta file you can invoke the apptainer as
apptainer run phylogenomics.sif orthofinder PATH-FASTA-FOLDER
apptainer run phylogenomics.sif astral -h
apptainer run phylogenomics.sif trimal -h
apptainer run phylogenomics.sif alignmentGO -h
apptainer run clipkit -h

```
Gaurav Sablok
