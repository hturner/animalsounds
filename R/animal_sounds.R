#' Create Animal Sounds Message
#'
#' @param animal the name of the animal (character)
#' @param sound the sound of the animal (character)
#'
#' @return
#' @export
#'
#' @examples
#' animal_sounds("cow", "moo")
animal_sounds <- function(animal, sound) {
  stopifnot(is.character(animal) & length(animal) == 1)
  stopifnot(is.character(sound) & length(sound) == 1)
  paste0("The ", animal, " says ", sound, "!")
}
