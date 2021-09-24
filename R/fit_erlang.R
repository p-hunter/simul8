fit_erlang <- function(x, shape  = 2) {
    
    # still working on "shape"
    # currently just returns the scale / rate parameter
    mu <- Mode(x) # a mode of a gaussian kernel density function = scale value of erlang

    
    list(
        shape = 2,
        rate = 1/mu,
        scale = mu
        )
    }











}
