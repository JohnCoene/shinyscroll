#' Shiny Scroll
#' 
#' Add dependencies.
#' 
#' @export
use_shinyscroll <- function(){
  shiny::singleton(
    shiny::tags$script(src = "shinyscroll-assets/script.js")
  )
}

#' Scroll
#' 
#' Scroll to a certain element in Shiny.
#' 
#' @param id Id of element to scroll to.
#' 
#' @export
scroll <- function(id){
  if(missing(id))
    stop("Missing `id`", call. = FALSE)
  
  session <- shiny::getDefaultReactiveDomain()
  session$sendCustomMessage("scrolly-scroll", list(id = id))
  invisible()
}