# Gillespie-algorithm
test code for the stochastic simulation of mRNA synthesis and degradation

## mRNAsyn.m
stochastic simulation of mRNA synthesis and degradation.  
### arguments
- k: synthesis rate
- g: degradation rate
- initial: initial abundance of mRNA molecules


The simulation corresponds to the rate equation d[mRNA]/dt = k - g[mRNA].

### How to run
- mRNA(k,g,initial)
- Stochastic and deterministic dynamics will be shown as blue and red line plot, respectively.