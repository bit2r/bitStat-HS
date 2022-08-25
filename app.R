library(shiny)
library(brochure)

# 메뉴 -----------------
nav_links <- tags$ul(
  tags$li(
    tags$a(href = "/", "home"),
  ),
  tags$li(
    tags$a(href = "/teacher", "교수용"),
  )
)


# 웹페이지 -----------------
source("global.R")
source("R/home.R")
source("R/teacher.R")
source("R/student.R")

## 2. 데이터 ----------------------

brochureApp(
  # 웹페이지 *******************
  home(),
  teacher(),
  student(),
  # 리다이렉션 *****************
  redirect(
    from = "/",
    to = "/teacher"
  ),
  redirect(
    from = "/",
    to = "/student"
  )
)
