using PackageCompiler
create_sysimage(
    [
        :ControlSystems,
        :DifferentialEquations,
        :ModelingToolkit,
        :NonlinearSolve,
        :DSP,
        :Interpolations,
        :Plots,
        :Interact,
        :Printf,
    ],
    sysimage_path="ControlSystemsPrecompile.so",
    # precompile_execution_file="precompile_execution.jl"
)
