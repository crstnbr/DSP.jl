__precompile__()

module DSP

using FFTW
using LinearAlgebra: mul!, rmul!
using Compat: range

export conv, conv2, deconv, filt, filt!, xcorr

include("dspbase.jl")

include("util.jl")
include("unwrap.jl")
include("windows.jl")
include("periodograms.jl")
include("Filters/Filters.jl")
include("lpc.jl")
include("estimation.jl")

using Reexport
import .Util: Frequencies, fftfreq, rfftfreq
@reexport using .Util, .Windows, .Periodograms, .Filters, .LPC, .Unwrap, .Estimation

include("deprecated.jl")
end
