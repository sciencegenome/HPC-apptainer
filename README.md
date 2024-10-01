# phylogenomics-apptainer 

- a apptainer for the phylogenomics
- it contains all the applications combined in a single container for the phylogenomics.
- it incldues orthofinder, astral, trimal, alignmentGO, rax-ml 

```
apptainer exec phylogenomics.def

Given an folder of the fasta file you can invoke the apptainer as
apptainer run phylogenomics.sif orthofinder PATH-FASTA-FOLDER
apptainer run phylogenomics.sif astral -h
apptainer run phylogenomics.sif trimal -h
apptainer run phylogenomics.sif alignmentGO -h



```
Gaurav Sablok
