fit_erlang <- function(x, shape  = 2) {
    
    # still working on "shape"
    # currently just returns the scale / rate parameter
    mu <- Mode(x) # a mode of a gaussian kernel density function = scale value of erlang

    if(is.numeric(shape)) {
        s <- shape
    } else {
        s <- as.integer(pmax(1, mean(x, na.rm = TRUE) / mu))
    }
    
    list(
        shape = s,
        rate = 1/mu,
        scale = mu
        )
    }

}
