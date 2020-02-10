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
#' @param block Defines vertical alignment.
#' 
#' @export
scroll <- function(id, block = c("start", "center", "end", "nearest")){
  if(missing(id))
    stop("Missing `id`", call. = FALSE)
  
  blk <- match.arg(blk)
  
  session <- shiny::getDefaultReactiveDomain()
  session$sendCustomMessage("scrolly-scroll", list(id = id, block = blk))
  invisible()
}