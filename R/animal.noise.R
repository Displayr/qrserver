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
    if (animal == "dog")
        "Woof"
    else if (animal == "cat")
        "Meow"
    else if (animal == "cow")
        "Moo"
    else
        "Who cares"
}
