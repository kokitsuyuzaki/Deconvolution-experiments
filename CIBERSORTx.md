# CIBERSOFRTx
Because CIBERSORTx is a GUI tool and we couldn't perform it programmably, we describe the analytical steps here.

## Step1: Create your Account on CIBERSORTx
- Access the following URL: https://cibersortx.stanford.edu

## Step2: Push "Run CIBERSORTx" button

## Step3: Select "1. Create Signature Matrix" button

## Step4: Select Analysis Mode as "Custom"

## Step5: Select Input Data Type as "RNA-Seq"

## Step6: Configure Custom Input (TSV files)
- Reference sample file (scRNA-Seq): Gene x Cells
  - 1st Row is like "Gene	Malignant	Malignant	Malignant..."

- Phenotype classes file (BulkRNA-Seq): Gene x Cells
  - 1st Row is like "GeneSymbol	53	58	59	60	65	67	71	72	74	75	78	79	80	81	82	84	88	89	94"

- Custom sig file name: e.g., "Mouse"

- For the details of these file formats, see the tutorial page: https://cibersortx.stanford.edu/tutorial.php

## Step7: Check "Diable quantile normalization"

## Step8: Additional Options (Set all default values)


