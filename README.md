# Knots-project-individual
A brief look into the Burau representation of the braid group.
Includes functions to compute the unreduced Burau and reduced Burau representations, as well as a function to calculate the Alexander polynomial of a braid's closure.
- Burau.m and rBurau.m both expect input in the form \[i1,i2,i3,...\], where i1, i2, etc. are integers representing the Artin generators. Negatives can be used to indicate the inverse. Both functions output a symbolic matrix in terms of t.
- Alexander.m expects a symbolic matrix as input (it is intended to take in the output from rBurau) and outputs a symbolic expression in terms of t.
