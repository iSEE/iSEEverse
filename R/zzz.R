all_iSEE_pkgs <- c("iSEE",
                   "iSEEu",
                   "iSEEhex",
                   "iSEEde",
                   "iSEEpathways",
                   "iSEEhub",
                   "iSEEindex",
                   "iSEEfier",
                   "iSEEid")

.onAttach <- function(libname, pkgname) {
  all_versions <- data.frame(
    pkg = all_iSEE_pkgs,
    ver = unlist(lapply(all_iSEE_pkgs, function(pkg) as.character(packageVersion(pkg))))
  )

  packages_info <- paste0(
    cli::col_green(cli::symbol$tick), " ", cli::col_blue(format(all_versions$pkg)), " ",
    cli::ansi_align(all_versions$ver, max(cli::ansi_nchar(all_versions$ver)))
  )

  bioc_info <- BiocManager::version()

  packageStartupMessage("Welcome to the iSEEverse!",
                        packageStartupMessage(iSEEverse_logo()),
                        "\n--- Using Bioc version ", bioc_info, "    ---",
                        "\n--- Currently loaded packages: ---\n",
                        paste(packages_info, collapse = "\n"))
}

