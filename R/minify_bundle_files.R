#' The application server-side
#' @description This function will minify any folder recursively
#' and create a single minified file by the name you give.
#' You can even download the binary for your own OS from
#' going to golang minify github repo.
#' You can go to `github.com/tdewolff/minify/tree/master/cmd/minify`
#' for windows it is always available with the package.
#' Then you can define the path of the binary in an environment variable
#' called `minify_gobinary_path`. This will help everybody set up
#' the binary even if they are not using windows
#' @param asset_input_folder string: defining the folder name from where files need to be picked
#' @param asset_output_file string: defining the file name from where the minified bundle will be put
#' @return Binary: returns console output given by the binary file
#' @example minify_bundle_files( asset_input_folder = "E:\\Coding\\R_code\\github\\some_project\\app\\js\\", asset_output_file = "E:\\Coding\\R_code\\github\\some_project\\app\\main.mini.js")
#' @noRd
#' @export
minify_bundle_files <- function(asset_input_folder, asset_output_file) {
  # check the environment value for the minify_gobinary_path
  minify_path <- Sys.getenv("minify_gobinary_path")
  if (
    nchar(minify_path) == 0
  ) {
    minify_path <- system.file(package = "minifyR", "minify.exe")
  }

  full_command <- sprintf(
    fmt = "%s -r -b -o %s %s",
    minify_path,
    asset_output_file,
    asset_input_folder
  )
  system(full_command)
}
