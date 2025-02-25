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
- post genome assembly apptainer. 
- genome completeness, phylogenomic profiling search
- protein-genome alignment for genome annotation inclduing the hint search. 

```
apptainer build genomeannotate.sif genomeannotate.def
```

- apptainer for the genome assembly coming from the pacbiohifi reads.
- it includes two genome assembler and one is hifiasm and the other is verkko.
- The benchmark for the assembly for these assemblers are located at my another repository [genomeasembly-pacbiohifi](https://github.com/codecreatede/genomeassembly-pacbiohifi)

- to invoke the hifiasm apptainer 
```
module load singularity
apptainer run hifiasm.sif hifiasm
```
- to build and invoke the verkko conda based apptainer. I wrote the verkko yaml so that you can directly import and run with in the apptainer. 
```
module load singularity 
apptainer build verkko.sif verkko.def 
echo ".opt/conda/etc/profile.d/conda.sh" >> $ENV_PATH
```
- inspect the images after the build 
```
for i in *.sif; do apptainer inspect ${i}; done
``

- apptainer images for the cpat you can directly call this from the sanbox repositories. 
- to build the image
 
```
apptainer build cpat.sif apptainer.def
```
- to inspect the image
```
apptainer inspect cpat.sif
```
- to run the apptainer image 
```
apptainer exec cpat.sif cpat 
```
- to run on the computing cluster with the singularity installed
```
module load singularity
```
- to install the apptainer on the new ubuntu version. 
```
sh apptainer-install.sh 
``

Gaurav Sablok
