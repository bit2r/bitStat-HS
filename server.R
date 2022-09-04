source("R/module_helloworld.R")

# Define server logic required to draw a histogram
function(input, output, session) {

  # 1. Header ---------------------------------
  output$logoUi <- renderUI({
    tags$img(src = "BitStat_logo.png", width="100%")
  })

  # 2. Body ---------------------------------
  output$teacherUi <- renderUI({
    tags$img(src = "teacher_icon.png", width="100%")
  })
  output$studentUi <- renderUI({
    tags$img(src = "student_icon.png", width="100%")
  })
  output$BitStatUi <- renderUI({
    tags$img(src = "bitstat_icon.png", width="100%")
  })
  ## 2.1. Call Shiny App ---------------------------------
  observeEvent(input$teacherButton, {

    rstudioapi::jobRunScript("R/hello_app.R")
    # shiny::shinyApp("R/student.R")
    # shiny::shinyApp("R/hello_app.R")
    # hello_world_UI(id = "id_1")
    # hello_world_server(id = "id_1")

  })

  # 3. Footer ---------------------------------
  output$logoKoreaUi <- renderUI({
    tags$img(src = "koRea_logo.png", width="50%")
  })

}

