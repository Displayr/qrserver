#' Determine the noise of an animal
#'
#' This function works out the appropriate noise
#'
#' @param animal name of animal
#' @return Animal's noise
#' @author matt
#' @examples animal.noise("elephant") # Who cares
#' animal.noise("dog") # Woof
#' @export
animal.noise = function(animal)
{
    switch(animal,
       "dog"="Woof",
       "cat"="Meow",
       "cow"="Moo",
       "Who cares"
    )
}
