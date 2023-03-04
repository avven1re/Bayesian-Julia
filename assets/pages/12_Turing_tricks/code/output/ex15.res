Chains MCMC chain (1000×21×4 Array{Float64, 3}):

Iterations        = 501:1:1500
Number of chains  = 4
Samples per chain = 1000
Wall duration     = 15.43 seconds
Compute duration  = 28.23 seconds
parameters        = α, β[1], β[2], β[3], β[4], σ, τ, zⱼ[1], zⱼ[2]
internals         = lp, n_steps, is_accept, acceptance_rate, log_density, hamiltonian_energy, hamiltonian_energy_error, max_hamiltonian_energy_error, tree_depth, numerical_error, step_size, nom_step_size

Summary Statistics
  parameters       mean       std      mcse    ess_bulk    ess_tail      rhat   ess_per_sec
      Symbol    Float64   Float64   Float64     Float64     Float64   Float64       Float64

           α    70.8184    4.0138    0.2038    583.0166    303.1663    1.0106       20.6495
        β[1]     2.9005    1.3626    0.0368   1354.6595    662.3246    1.0007       47.9797
        β[2]   -10.6271    1.3671    0.0299   2099.5797   1802.9402    1.0017       74.3635
        β[3]     6.5069    1.3290    0.0289   2116.6325   2637.1576    1.0019       74.9675
        β[4]     1.0599    1.3342    0.0308   1883.6179   1753.9993    1.0020       66.7145
           σ     7.4030    0.4439    0.0077   3391.2626   2557.6860    1.0017      120.1127
           τ     5.2026    2.8110    0.1078    984.2546    293.3061    1.0114       34.8606
       zⱼ[1]    -0.8232    0.7807    0.0217   1244.8616   1299.3248    1.0016       44.0909
       zⱼ[2]     0.8737    0.7743    0.0252    915.8298    359.3451    1.0037       32.4371

Quantiles
  parameters       2.5%      25.0%      50.0%     75.0%     97.5%
      Symbol    Float64    Float64    Float64   Float64   Float64

           α    62.8198    68.5595    70.7552   72.9211   79.4680
        β[1]     0.2851     2.0015     2.8989    3.8370    5.5616
        β[2]   -13.2770   -11.5298   -10.6578   -9.6919   -7.9844
        β[3]     3.8863     5.6240     6.5350    7.3831    9.0774
        β[4]    -1.5042     0.1318     1.0376    1.9772    3.6963
           σ     6.5961     7.0896     7.3833    7.6803    8.3225
           τ     1.8514     3.2014     4.4661    6.4503   13.1747
       zⱼ[1]    -2.4385    -1.3396    -0.8025   -0.2648    0.5705
       zⱼ[2]    -0.6706     0.3563     0.8609    1.3813    2.3997
