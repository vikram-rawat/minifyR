#' The application server-side
#' @description This function will minify any folder recursively and create all the files in the specified folder
#' @param asset_input_folder string: defining the folder name from where files need to be picked
#' @param asset_output_file string: defining the file name from where the minified bundle will be put
#' @return Binary: returns console output given by the binary file
#' @example minify_bundle_files( asset_input_folder = "E:\\Coding\\R_code\\github\\some_project\\app\\js\\", asset_output_file = "E:\\Coding\\R_code\\github\\some_project\\app\\main.mini.js")
#' @noRd
#' @export
minify_bundle_files <- function( asset_input_folder, asset_output_file ) {
  # Your application server logic
  minify_path <- system.file(package = "minifyR", "minify.exe")
  full_command <- sprintf(
    fmt = "%s -r -b -o %s %s",
    minify_path,
    asset_output_file,
    asset_input_folder
  )
  system(full_command)
}
