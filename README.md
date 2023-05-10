# GraphAntidimension

This repository includes the source files for the models for the calculation of the antidimension in graphs. These files code, in Mosel 5.6.0, the models in the paper entitled "On the (k,l)-anonymity of networks via their k-metric antidimension" authored by:

- Elena Fernández (elena.fernandez(at)uca.es)

- Dorota Kuziak (dorota.kuziak(at)uca.es)

- Manuel Munoz-Marquez (manuel.munoz(at)uca.es)

- Ismael G. Yero (ismael.gonzalez(at)uca.es)

at Universidad de Cádiz (Spain).

The source model files for cylinders and toruses, include a graph generator, so no data file is needed.

The source model files for dense and sparse general graphs include a random graph generator. In this cases, a seed for the random generator could also be provided.

Source model files description:

- AntiResolving.mos: Formulation of the problem of looking for the antidimension and the antiresolving set in a graph

- CylinderGraph.mos: Generate a cylinder graph and find its antidimension and an antidimension set trough AntiResolving.mos

- TorusGraph.mos: Generate a torus graph and find its antidimension and an antidimension set trough AntiResolving.mos

- DenseGraph.mos: Generate a dense graph with a given degree and find its antidimension and an antidimension set trough AntiResolving.mos

- SparseGraph.mos: Generate a dense sparse with a given degree and find its antidimension and an antidimension set trough AntiResolving.mos

- Distances.mos: File to compute the distances between each pair of nodes in a graph

- Print.mos: File to print results
