clc; close all; clear all;
addpath(genpath('.'))

% This code is an adapted version of the

% load a sample image:
oim = double(imread('Side1_big_animal_0.56_hoofed-gemsbok1.png'));

% set options
opts = metamerOpts(oim,'windowType=radial','scale=0.5','aspect=1','origin=[320,946]');

% make windows
m = mkImMasks(opts);

% plot windows
plotWindows(m,opts);

% do metamer analysis on original (measure statistics)
params = metamerAnalysis(oim,m,opts);

% do metamer synthesis (generate new image matched for statistics)
res = metamerSynthesis(params,size(oim),m,opts);
