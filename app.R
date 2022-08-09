library(shiny)
library(brochure)
library(shinipsum)

# 메뉴 -----------------
nav_links <- tags$ul(
  tags$li(
    tags$a(href = "/", "home"),
  ),
  tags$li(
    tags$a(href = "/import", "데이터 불러오기"),
  ),
  tags$li(
    tags$a(href = "/desc", "기술통계"),
  ),
  tags$li(
    tags$a(href = "/prob", "확률분포"),
  ),
  tags$li(
    tags$a(href = "/contact", "연락처"),
  )
)

# 웹페이지 -----------------
## 1. 홈 ----------------------
home <- function() {
  page(
    href = "/",
    ui = function(request) {
      tagList(
        h1("고교통계 패키지"),
        nav_links,
        plotOutput("image", height = "300px"),
      )
    },
    server = function(input, output, session) {
      output$image <- renderImage({
        random_image()
      })
    }
  )
}

## 2. 데이터 ----------------------
import_data <- function() {
  page(
    href = "/import",
    ui = function(request) {
      tagList(
        h1("데이터"),
        nav_links,
        tableOutput("table")
      )
    },
    server = function(input, output, session) {
      output$table <- renderTable({
        random_table(10, 5)
      })
    }
  )
}

## 3. 기술통계 ----------------------
desc_stat <- function() {
  page(
    href = "/desc",
    ui = function(request) {
      tagList(
        h1("기술통계"),
        nav_links,
        tableOutput("text")
      )
    },
    server = function(input, output, session) {
      output$text <- renderText({
        random_text(nwords = 100)
      })
    }
  )
}

## 4. 확률분포 ----------------------
prob_dist <- function() {
  page(
    href = "/prob",
    ui = function(request) {
      tagList(
        h1("통계 분포"),
        nav_links,
        plotOutput("plot")
      )
    },
    server = function(input, output, session) {
      output$plot <- renderPlot({
        random_ggplot()
      })
    }
  )
}

page_contact <- function() {
  page(
    href = "/contact",
    ui = tagList(
      h1("연락처"),
      nav_links,
      tags$ul(
        tags$li("한국 R 사용자회"),
        tags$li("전자우편 주소: admin@r2bit.com")
      )
    )
  )
}

brochureApp(
  # 웹페이지 *******************
  home(),
  import_data(),
  prob_dist(),
  desc_stat(),
  page_contact(),
  # 리다이렉션 *****************
  redirect(
    from = "/page3",
    to = "/page2"
  ),
  redirect(
    from = "/page4",
    to = "/"
  )
)
