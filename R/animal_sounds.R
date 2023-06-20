#' Create Animal Sounds Message
#'
#' Create a message stating what sound an animal makes.
#'
#' We have used [paste0()] but not [glue::glue()]
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
  if (!rlang::is_character(sound, n = 1)) {
    cli::cli_abort("`sound` must be a single string!")
  }
  paste0("The ", animal, " says ", sound, "!")
}
