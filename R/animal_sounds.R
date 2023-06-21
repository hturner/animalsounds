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
animal_sounds <- function(animal, sound = NULL) {
  if (!rlang::is_character(animal, 1)) {
    cli::cli_abort(
      c("{.var animal} must be a single string!",
        "i" = "It was {.type {animal}} of length {length(animal)} instead."),
      class = "error_not_single_string"
    )
  }
  if (is.null(sound)){
    paste0("The ", animal, " makes no sound.")
  } else if (!rlang::is_character(sound, 1)) {
    cli::cli_abort(
      c("{.var sound} must be a single string!",
        "i" = "It was {.type {sound}} of length {length(sound)} instead."),
      class = "error_not_single_string"
    )
  } else {
    paste0("The ", animal, " says ", sound, "!")
  }
}
