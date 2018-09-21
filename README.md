# Gillespie-algorithm
test code for the stochastic simulation of mRNA synthesis and degradation

## mRNAsyn.m
stochastic simulation of mRNA synthesis and degradation.  

### example output
<div align="center">
<img src="https://user-images.githubusercontent.com/40162543/45076843-73888300-b126-11e8-92c7-e7e5a77e3039.png" width="60%">
</div>

### arguments
- k: synthesis rate
- g: degradation rate
- initial: initial abundance of mRNA molecules


The simulation corresponds to the rate equation d[mRNA]/dt = k - g[mRNA].

### How to run
- mRNA(k,g,initial)
- Stochastic and deterministic dynamics will be shown as blue and red line plot, respectively.