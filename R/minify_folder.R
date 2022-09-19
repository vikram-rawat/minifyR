#' Minify folders
#' @description This function will minify any folder recursively and
#' create all the files in the specified folder
#' You can even download the binary for your own OS from
#' going to golang minify github repo.
#' You can go to `github.com/tdewolff/minify/tree/master/cmd/minify`
#' for windows it is always available with the package.
#' Then you can define the path of the binary in an environment variable
#' called `minify_binary_path`. This will help everybody set up
#' the binary even if they are not using windows
#' @param asset_input_folder string: defining the folder name from where files need to be picked or you can define an environment variable called `minify_input_path`
#' @param asset_output_folder string: defining the folder name from where files need to be created or you can define an environment variable called `minify_output_path`
#' @example minify_folder( asset_input_folder = "E:\\Coding\\R_code\\github\\some_project\\app\\js\\", asset_output_folder = "E:\\Coding\\R_code\\github\\some_project\\app\\dummy\\")
#' @return Binary: returns console output given by the binary file
#' @noRd
#' @export
minify_folder <- function(asset_input_folder, asset_output_folder) {
  # check the environment value for the minify_binary_path
  minify_path <- Sys.getenv("minify_binary_path")

  if (nchar(minify_path) == 0) {
    minify_path <- system.file(package = "minifyR", "minify.exe")
  }

  if (missing(asset_input_folder)) {
    minify_input_path <- Sys.getenv("minify_input_path")
    if (nchar(minify_input_path) == 0) {
      stop("please provide a valid input path")
    }
  } else {
    minify_input_path <- asset_input_folder
  }

  if (missing(asset_output_folder)) {
    minify_output_path <- Sys.getenv("minify_output_path")
    if (nchar(minify_input_path) == 0) {
      stop("please provide a valid output path")
    }
  } else {
    minify_output_path <- asset_output_folder
  }

  full_command <- sprintf(
    fmt = "%s -r -o %s %s",
    minify_path,
    minify_output_path,
    minify_input_path
  )

  system(full_command)
}
