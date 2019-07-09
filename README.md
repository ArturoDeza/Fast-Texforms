<img src="https://github.com/ArturoDeza/Fast-Texforms/blob/master/TexForms_Comparison.png" width="800">


# Fast-Texforms

Code database for Fast Texform generation as proposed in the work of Deza, Chen, Long and Konkle, 2019. 

Here is the code for the previous [Texform generation model](https://github.com/brialorelle/TexformGen) as used in (Long, Yu & Konkle, 2019](https://www.pnas.org/content/115/38/E9015). A more detailed explanation of what is a Texform can also be accessed [here](https://www.brialong.com/all-about-texforms).

## Download and Install depending packages

This code depends on the following modules:

[Freeman and Simoncelli Metamer model](https://github.com/freeman-lab/metamers)

[Steerable Pyramid Toolbox](https://github.com/LabForComputationalVision/matlabPyrTools)

Running the following script should install these modules for you:

```
bash dowload_dependencies.sh
```

## Run code demo to generate a sample Texform:

```
fast_texform.m 
```

### Examples of different parametrizations for Texform generation

#### Modification of Point of Fixation

#### Modification of Rate of Growth of Receptive Field Size (scaling factor)

### Papers that have used Texforms
<b> Mid-level visual features underlie the high-level categorical organization of the ventral stream </b> [Long, Yu & Konkle, 2019](https://www.pnas.org/content/115/38/E9015)


#### Citation
If you find this code useful for your research please consider citing:

```
@inproceedings{
deza2019accelerated,
title={Accelerated Texforms: Alternative Methods for Generating Unrecognizable Object Images with Preserved Mid-Level Features},
author={Arturo Deza and Yi-Chia Chen and Bria Long and Talia Konkle},
booktitle={BioArXiv / CCN ?},
year={2019},
}
```
