

#' Update iSEE and the whole iSEEverse
#'
#' @param repos The repositories to use to check for updates.
#' Defaults to getOption("repos").
#'
#' @return An invisible NULL or the suggested commands to update the
#' corresponding packages.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' iSEEverse_update()
#' }
iSEEverse_update <- function(repos = getOption("repos")) {
  bmv <- BiocManager::valid(pkgs = all_iSEE_pkgs)

  if(bmv) {
    cli::cat_line("All iSEEverse packages are up-to-date!")
    return(invisible(NULL))
  } else {
    # suggest command to install the not up-to-date ones
    message("update this, to do")
    return(invisible(NULL))
  }
}


#' The iSEEverse logo, using ASCII characters
#'
#' @details
#' Generated via https://patorjk.com/software/taag/#p=display&f=Big&t=iSEE
#'
#' @return The character vector to be parsed in the startup message
#'
#' @export
#'
#' @examples
#' iSEEverse_logo()
iSEEverse_logo <- function() {
  logo <- c(
    " _  _____ ______ ______ ",
    "(_)/ ____|  ____|  ____|",
    " _| (___ | |__  | |__  ",
    "| |\\___ \\|  __| |  __|  ",
    "| |____) | |____| |____ ",
    "|_|_____/|______|______|"
  )

  # structure(logo, class = "iSEEverse_logo")
  # message(logo, sep = "\n")
  # invisible(NULL)

  return(paste(logo, collapse = "\n"))
}
