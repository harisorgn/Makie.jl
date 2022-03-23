# This file was generated, do not modify it. # hide
__result = begin # hide
  
using CairoMakie
CairoMakie.activate!() # hide
Makie.inline!(true) # hide

f = Figure()
Axis(f[1, 1])

xs = 0:0.5:10
ys = 0.5 .* sin.(xs)

lowerrors = fill(0.1, length(xs))
higherrors = LinRange(0.1, 0.4, length(xs))

errorbars!(xs, ys, higherrors, color = :red) # same low and high error

# plot position scatters so low and high errors can be discriminated
scatter!(xs, ys, markersize = 3, color = :black)

f

  end # hide
  save(joinpath(@OUTPUT, "example_14474209787928391393.png"), __result) # hide
  
  nothing # hide