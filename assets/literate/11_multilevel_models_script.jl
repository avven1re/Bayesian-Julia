# This file was generated, do not modify it.

using Turing
using LinearAlgebra: I
using Statistics: mean, std
using Random: seed!
seed!(123)
setprogress!(false) # hide

@model function varying_intercept(
    X, idx, y; n_gr=length(unique(idx)), predictors=size(X, 2)
)
    #priors
    α ~ Normal(mean(y), 2.5 * std(y))       # population-level intercept
    β ~ filldist(Normal(0, 2), predictors)  # population-level coefficients
    σ ~ Exponential(std(y))                 # residual SD
    #prior for variance of random intercepts
    #usually requires thoughtful specification
    τ ~ truncated(Cauchy(0, 2); lower=0)    # group-level SDs intercepts
    αⱼ ~ filldist(Normal(0, τ), n_gr)       # group-level intercepts

    #likelihood
    ŷ = α .+ X * β .+ αⱼ[idx]
    return y ~ MvNormal(ŷ, σ^2 * I)
end;

@model function varying_slope(X, idx, y; n_gr=length(unique(idx)), predictors=size(X, 2))
    #priors
    α ~ Normal(mean(y), 2.5 * std(y))                    # population-level intercept
    σ ~ Exponential(std(y))                              # residual SD
    #prior for variance of random slopes
    #usually requires thoughtful specification
    τ ~ filldist(truncated(Cauchy(0, 2); lower=0), n_gr) # group-level slopes SDs
    βⱼ ~ filldist(Normal(0, 1), predictors, n_gr)        # group-level standard normal slopes

    #likelihood
    ŷ = α .+ X * βⱼ * τ
    return y ~ MvNormal(ŷ, σ^2 * I)
end;

@model function varying_intercept_slope(
    X, idx, y; n_gr=length(unique(idx)), predictors=size(X, 2)
)
    #priors
    α ~ Normal(mean(y), 2.5 * std(y))                     # population-level intercept
    σ ~ Exponential(std(y))                               # residual SD
    #prior for variance of random intercepts and slopes
    #usually requires thoughtful specification
    τₐ ~ truncated(Cauchy(0, 2); lower=0)                 # group-level SDs intercepts
    τᵦ ~ filldist(truncated(Cauchy(0, 2); lower=0), n_gr) # group-level slopes SDs
    αⱼ ~ filldist(Normal(0, τₐ), n_gr)                    # group-level intercepts
    βⱼ ~ filldist(Normal(0, 1), predictors, n_gr)         # group-level standard normal slopes

    #likelihood
    ŷ = α .+ αⱼ[idx] .+ X * βⱼ * τᵦ
    return y ~ MvNormal(ŷ, σ^2 * I)
end;

using DataFrames
using CSV
using HTTP

url = "https://raw.githubusercontent.com/storopoli/Bayesian-Julia/master/datasets/cheese.csv"
cheese = CSV.read(HTTP.get(url).body, DataFrame)
describe(cheese)

for c in unique(cheese[:, :cheese])
    cheese[:, "cheese_$c"] = ifelse.(cheese[:, :cheese] .== c, 1, 0)
end

cheese[:, :background_int] = map(cheese[:, :background]) do b
    if b == "rural"
        1
    elseif b == "urban"
        2
    else
        missing
    end
end

first(cheese, 5)

X = Matrix(select(cheese, Between(:cheese_A, :cheese_D)));
y = cheese[:, :y];
idx = cheese[:, :background_int];

model_intercept = varying_intercept(X, idx, y)
chain_intercept = sample(model_intercept, NUTS(), MCMCThreads(), 1_000, 4)
println(DataFrame(summarystats(chain_intercept)))

model_slope = varying_slope(X, idx, y)
chain_slope = sample(model_slope, NUTS(), MCMCThreads(), 1_000, 4)
println(DataFrame(summarystats(chain_slope)))

model_intercept_slope = varying_intercept_slope(X, idx, y)
chain_intercept_slope = sample(model_intercept_slope, NUTS(), MCMCThreads(), 1_000, 4)
println(DataFrame(summarystats(chain_intercept_slope)))

