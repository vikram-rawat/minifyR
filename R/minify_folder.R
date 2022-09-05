#' The application server-side
#' @description This function will minify any folder recursively and create all the files in the specified folder
#' @param asset_input_folder string: defining the folder name from where files need to be picked
#' @param asset_output_folder string: defining the folder name from where files need to be created
#' @example minify_folder( asset_input_folder = "E:\\Coding\\R_code\\github\\some_project\\app\\js\\", asset_output_folder = "E:\\Coding\\R_code\\github\\some_project\\app\\dummy\\")
#' @return Binary: returns console output given by the binary file
#' @noRd
#' @export
minify_folder <- function( asset_input_folder, asset_output_folder ) {
  # Your application server logic
  minify_path <- system.file(package = "minifyR", "minify.exe")
  full_command <- sprintf(
    fmt = "%s -r -o %s %s",
    minify_path,
    asset_output_folder,
    asset_input_folder
  )
  system(full_command)
}
