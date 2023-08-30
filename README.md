# SCOTS Case Library
Public benchmark library of $(N-1)$-secure test cases for security-constrained optimal transmission switching applications.

The test cases are adapted from [pglib-opf](https://github.com/power-grid-lib/pglib-opf). 
The methodology to modify these cases (including the code) will be published in upcoming work by Tim Donkiewicz and Oliver Gaul.

## Contents
Within the `pglib-scots` folder, we provide data from
1. **SCOTS-Slack**: Generate N-1 secure network test cases using slack variables on network component bounds. We provide data for two objective functions, "slack_relative_linear" and "slack_relative_quadratic" (linear/quadratic penalties in the objective function, respectively.).
   - `.m` files: Modified Matpower case files.
   - `.csv` files: List of slack variable values.
2. **SCOTS-LCS**: Largest set of contingencies that can be respected simultaneously.
   - `.json` files: List of contingencies.

Note: The resulting problems may only be feasible if radial lines and generators required to fulfill the total load are not considered as contingencies (code to determine these will follow).

## Citation
Until the upcoming work is published, please use this citation:
```
@unpublished{donkiewicz2024systematic,
author  = {Donkiewicz, Tim and Gaul, Oliver},
title   = {A Systematic Approach for the Generation of (N-1)-Secure Power System Test Cases},
year    = {2024},
note    = {unpublished},
}
```