library(shiny)
library(brochure)

brochureApp(
  page(
    href = "/",
    ui = tagList(
      h1("This is my first page")
    )
  ),
  redirect(
    from = "/nothere",
    to = "/"
  )
)

