library(shiny)
library(brochure)
library(gridlayout)

# Creating a navlink
nav_links <- tags$ul(
  tags$li(
    tags$a(href = "/", "home"),
  ),
  tags$li(
    tags$a(href = "/page2", "page2"),
  ),
  tags$li(
    tags$a(href = "/page3", "page3"),
  )
)

page_1 <- function() {
  page(
    href = "/",
    source("R/hello_app.R")
  )
}

page_2 <- function() {
  page(
    href = "/page2",
    source("R/student.R")
  )
}

page_3 <- function() {
  page(
    href = "/page3",
    source("R/teacher.R")
  )
}


brochureApp(

  page_1(),
  page_2(),
  page_3()

)
