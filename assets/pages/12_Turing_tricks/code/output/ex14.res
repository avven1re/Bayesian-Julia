Chains MCMC chain (1000×21×4 Array{Float64, 3}):

Iterations        = 501:1:1500
Number of chains  = 4
Samples per chain = 1000
Wall duration     = 8.43 seconds
Compute duration  = 14.54 seconds
parameters        = α, β[1], β[2], β[3], β[4], σ, τ, αⱼ[1], αⱼ[2]
internals         = lp, n_steps, is_accept, acceptance_rate, log_density, hamiltonian_energy, hamiltonian_energy_error, max_hamiltonian_energy_error, tree_depth, numerical_error, step_size, nom_step_size

Summary Statistics
  parameters       mean       std      mcse    ess_bulk    ess_tail      rhat   ess_per_sec
      Symbol    Float64   Float64   Float64     Float64     Float64   Float64       Float64

           α    70.5750    4.9529    0.1758   1029.5217    844.3152    1.0030       70.8305
        β[1]     2.9678    1.3621    0.0284   2301.9410   2567.3424    1.0015      158.3723
        β[2]   -10.5758    1.3528    0.0283   2292.8971   2689.4818    1.0016      157.7501
        β[3]     6.5451    1.3754    0.0296   2159.6596   2422.8069    1.0008      148.5834
        β[4]     1.1113    1.3063    0.0281   2168.5382   2917.6017    1.0014      149.1942
           σ     7.3921    0.4588    0.0080   3375.1323   2781.8728    1.0011      232.2072
           τ     5.9062    5.4285    0.1809   1389.7053   1032.0055    1.0022       95.6110
       αⱼ[1]    -3.2736    4.8721    0.1723   1082.7737    861.5886    1.0031       74.4942
       αⱼ[2]     3.7794    4.8805    0.1726   1100.3800    849.9286    1.0053       75.7055

Quantiles
  parameters       2.5%      25.0%      50.0%     75.0%     97.5%
      Symbol    Float64    Float64    Float64   Float64   Float64

           α    61.1193    68.4790    70.8050   73.0163   79.7383
        β[1]     0.2756     2.0510     2.9653    3.8385    5.7314
        β[2]   -13.1811   -11.4846   -10.5821   -9.6680   -7.9405
        β[3]     3.9150     5.6014     6.5409    7.4561    9.2559
        β[4]    -1.3546     0.2043     1.1077    2.0211    3.6620
           σ     6.5394     7.0788     7.3737    7.6912    8.3233
           τ     1.8813     3.1833     4.4974    6.7298   18.3939
       αⱼ[1]   -12.4352    -5.6100    -3.4212   -1.3058    5.9751
       αⱼ[2]    -5.1232     1.4856     3.5064    5.6845   13.0361
