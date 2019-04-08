import Statistics
using LinearAlgebra
using Cassette
using Cassette: Tagged, tag, untag, istagged, metadata, hasmetadata,
    enabletagging, @overdub, overdub, canrecurse, similarcontext, fallback
using Espresso
using Requires


include("helpers.jl")
include("devices.jl")
include("tape.jl")
include("tapeutils.jl")
include("trace.jl")
include("diffrules.jl")
include("grad.jl")
include("compile.jl")
include("update.jl")
include("transform.jl")


function __init__()
    @require CuArrays="3a865a2d-5b23-5a0f-bc46-62713ec82fae" include("cuda.jl")
end
