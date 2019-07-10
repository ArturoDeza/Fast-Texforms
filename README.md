<img src="https://github.com/ArturoDeza/Fast-Texforms/blob/master/TexForms_Comparison.png" width="800">

Here is the code for the previous [Texform generation model](https://github.com/brialorelle/TexformGen) as used in [Long, Yu & Konkle, 2019](https://www.pnas.org/content/115/38/E9015). A more detailed explanation of what is a Texform can also be accessed [here](https://www.brialong.com/all-about-texforms).

# What is a Texform?

| Input | Texform | 
| --- | --- |
| <img src="https://github.com/ArturoDeza/Fast-Texforms/blob/master/640x640_s0.5_a1_o0.5_original.png" width="440"> | <img src="https://github.com/ArturoDeza/Fast-Texforms/blob/master/Animated_Texform.gif" width="440"> | 

Texforms are images that preserve the coarse shape and
texture information of objects, while rendering them unrecognizable
at  the  basic level ([Long, Yu & Konkle, 2018](https://www.pnas.org/content/115/38/E9015)). These stimuli have been valuable to test whether cognitive and neural processes depend on explicit recognition of the objects. However, to generate these images, the current implementation and computational complexity of the model requires
 approximately   4-6  hours  per  object --  thus  preventing  data-hungry  experiments  that  may  require  generating  thousands  of texforms.    Our  contribution  in  this work  includes  the  introduction  of  2  new
texform generation methods that accelerate the rendering
time from hours to minutes or seconds respectively. The
first we call Fast-FS-Texform where we accelerate the rendering time of the [Freeman & Simoncelli](https://www.nature.com/articles/nn.2889.pdf?origin=ppub) model
and  increase  the  output  resolution  by  placing  a  simulated  point  of  fixation  outside  of  the  visual  field.    The
second, which we call NeuroFovea-Texform, is an adaptation  of  the  newly  proposed  metamer  model  of [Deza, Jonalagadda & Eckstein, 2019](https://openreview.net/forum?id=BJzbG20cFQ) which leverages a
VGGNet and foveated style transfer.  We show qualitative
and quantitative results of both new methods opening the
door to data-intensive texform experiments.


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

| Center Fixation | Side Fixation | Out of Image Fixation |  
| --- | --- | --- |
| <img src="https://github.com/ArturoDeza/Fast-Texforms/blob/master/Gifs/Animation_Texform_Center.gif" width="256"> | <img src="https://github.com/ArturoDeza/Fast-Texforms/blob/master/Gifs/Animation_Texform_Side.gif" width="256"> | <img src="https://github.com/ArturoDeza/Fast-Texforms/blob/master/Gifs/Animated_Texform_Further.gif" width="256"> |


#### Modification of Rate of Growth of Receptive Field Size (scaling factor)
| CLow Scaling Factor (s=0.25) | Medium Scaling Factor (s=0.5) | High Scaling Factor (0.75) |  
| --- | --- | --- |
| <img src="https://github.com/ArturoDeza/Fast-Texforms/blob/master/Gifs/Scale_025.gif" width="256"> | <img src="https://github.com/ArturoDeza/Fast-Texforms/blob/master/Gifs/Scale_050.gif" width="256"> | <img src="https://github.com/ArturoDeza/Fast-Texforms/blob/master/Gifs/Scale_075.gif" width="256"> |

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
