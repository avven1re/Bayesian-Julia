Chains MCMC chain (1000×17×4 Array{Float64, 3}):

Iterations        = 1001:1:2000
Number of chains  = 4
Samples per chain = 1000
Wall duration     = 5.07 seconds
Compute duration  = 8.49 seconds
parameters        = α, β[1], β[2], β[3], σ
internals         = lp, n_steps, is_accept, acceptance_rate, log_density, hamiltonian_energy, hamiltonian_energy_error, max_hamiltonian_energy_error, tree_depth, numerical_error, step_size, nom_step_size

Summary Statistics
  parameters       mean       std      mcse    ess_bulk    ess_tail      rhat   ess_per_sec
      Symbol    Float64   Float64   Float64     Float64     Float64   Float64       Float64

           α    32.9480    7.7468    0.2282   1173.7807   1199.8512    1.0027      138.3034
        β[1]   -49.9599    6.9387    0.2058   1164.3361   1340.1485    1.0030      137.1905
        β[2]    22.0431    3.5609    0.1047   1175.6535   1217.0654    1.0033      138.5240
        β[3]     0.2728    0.8819    0.0236   1493.2717   1661.8408    1.0028      175.9481
           σ    17.8491    0.6193    0.0127   2351.0363   1972.5231    1.0010      277.0162

Quantiles
  parameters       2.5%      25.0%      50.0%      75.0%      97.5%
      Symbol    Float64    Float64    Float64    Float64    Float64

           α    18.5380    27.7723    32.6057    37.9096    49.3423
        β[1]   -62.7857   -54.5494   -50.2855   -45.4741   -35.3443
        β[2]    14.7913    19.7396    22.1681    24.4313    28.6965
        β[3]    -1.4185    -0.2770     0.2243     0.7787     2.1571
           σ    16.6845    17.4242    17.8210    18.2614    19.0900
