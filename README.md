# ImportAll.jl

[![Build Status](https://travis-ci.org/NTimmons/ImportAll.jl.svg?branch=master)](https://travis-ci.org/NTimmons/ImportAll.jl)[![codecov](https://codecov.io/gh/NTimmons/ImportAll.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/NTimmons/ImportAll.jl)

The ImportAll.jl package provides the `@importall` macro to replace the [`importall`](https://docs.julialang.org/en/v0.6/manual/modules/) command from Julia 0.6, which was [removed in Julia 1.0](https://github.com/JuliaLang/julia/issues/22789).


### Tutorial
```
using ImportAll
@importall(Base)
```
This will import every function in Base.

This is generally not a good thing to do but is sometimes necessary.
