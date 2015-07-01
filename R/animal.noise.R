#' Determine the noise of an animal
#'
#' This function works out the appropriate noise
#'
#' @param animal name of animal
#' @return Animal's noise
#' @author matt
#' @examples animal.noise("elephant") # Silence
#' animal.noise("dog") # Woof
#' @export
animal.noise = function(animal)
{
    switch(animal,
       "dog"="Woofie",
       "cat"="Meow",
       "cow"="Moo",
       "Silence"
    )
}
