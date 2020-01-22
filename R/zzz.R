.onLoad <- function(libname, pkgname) {
  shiny::addResourcePath(
    "shinyscroll-assets", 
    system.file("assets", package = "shinyscroll")
  )
}