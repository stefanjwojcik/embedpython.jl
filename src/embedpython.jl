module embedpython

using PyCall

# provides a constant package path! 
const PACKAGE_PATH = joinpath(dirname(@__DIR__), "src", "python")

function __init__()
    # for Solcast
    py"""
    import sys
    sys.path.append($PACKAGE_PATH)
    import my_fav_py_tools as mypy    
    #import tenaska_submission_update as tsub
    """
end # end __init__() function 

function my_fav_py_tools()
    py"mypy.my_fav_py_tools"()
end # end my_fav_py_tools() function

end # module embedpython