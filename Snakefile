import pandas as pd
from snakemake.utils import min_version

#################################
# Setting
#################################
min_version("6.5.3")

SAMPLES = ['fly']

rule all:
    input:
        expand('data/{sample}/FINISH', sample=SAMPLES)

#################################
# Download
#################################
rule download:
    output:
        'data/{sample}/FINISH'
    container:
        'docker://koki/deconvolution-experiments-prep:20230421'
    resources:
        mem_gb=1000
    benchmark:
        'benchmarks/download_{sample}.txt'
    log:
        'logs/download_{sample}.log'
    shell:
        'src/download_{wildcards.sample}.sh {output} >& {log}'

#################################
# Preprocessing
#################################
rule preprocess_query:
     input:
        'data/{sample}/FINISH'
     output:
        'data/{sample}/query.txt'
    container:
        'docker://koki/deconvolution-experiments-prep:20230421'
    resources:
        mem_gb=1000
    benchmark:
        'benchmarks/preprocess_query_{sample}.txt'
    log:
        'logs/preprocess_query_{sample}.log'
    shell:
        'src/preprocess_query_{wildcards.sample}.sh {output} >& {log}'

rule preprocess_reference:
     input:
        'data/{sample}/FINISH'
     output:
        'data/{sample}/reference.txt'
    container:
        'docker://koki/deconvolution-experiments-prep:20230421'
    resources:
        mem_gb=1000
    benchmark:
        'benchmarks/preprocess_reference_{sample}.txt'
    log:
        'logs/preprocess_reference_{sample}.log'
    shell:
        'src/preprocess_reference_{wildcards.sample}.sh {output} >& {log}'

