Chains MCMC chain (1000×17×4 Array{Float64, 3}):

Iterations        = 501:1:1500
Number of chains  = 4
Samples per chain = 1000
Wall duration     = 8.62 seconds
Compute duration  = 14.98 seconds
parameters        = α, β[1], β[2], β[3], σ
internals         = lp, n_steps, is_accept, acceptance_rate, log_density, hamiltonian_energy, hamiltonian_energy_error, max_hamiltonian_energy_error, tree_depth, numerical_error, step_size, nom_step_size

Summary Statistics
  parameters      mean       std      mcse    ess_bulk    ess_tail      rhat   ess_per_sec
      Symbol   Float64   Float64   Float64     Float64     Float64   Float64       Float64

           α   21.5919    8.7175    0.2082   1752.8806   2015.2916    1.0017      117.0303
        β[1]    2.0147    1.8092    0.0413   2303.1718   2054.4523    1.0015      153.7703
        β[2]    0.5808    0.0584    0.0013   2150.9822   2145.4786    1.0007      143.6094
        β[3]    0.2437    0.3056    0.0066   2173.7213   2419.8295    1.0016      145.1276
           σ   17.8928    0.5896    0.0113   2743.3679   2336.5055    1.0006      183.1598

Quantiles
  parameters      2.5%     25.0%     50.0%     75.0%     97.5%
      Symbol   Float64   Float64   Float64   Float64   Float64

           α    4.3464   15.7517   21.7247   27.2853   38.7344
        β[1]   -0.6530    0.7333    1.6501    3.0029    6.3849
        β[2]    0.4687    0.5416    0.5794    0.6197    0.6980
        β[3]   -0.3336    0.0285    0.2439    0.4560    0.8316
           σ   16.7749   17.4893   17.8613   18.2915   19.0887
