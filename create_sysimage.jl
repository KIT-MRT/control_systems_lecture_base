using PackageCompiler
sysimage_path = "ControlSystemsPrecompile.so"
create_sysimage(
    Symbol[
        :ControlSystems,
        :DifferentialEquations,
        :ModelingToolkit,
        # :NonlinearSolve,
        # :DSP,
        # :Interpolations,
        :Plots,
        # :Interact,
        # :Printf,
    ],
    sysimage_path=sysimage_path,
    # precompile_execution_file="precompile_execution.jl"
)

# Add Jupyter kernel using created sysimage
using IJulia
installkernel("Julia precompiled", "--sysimage=$sysimage_path")
