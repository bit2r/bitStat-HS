
source("module/helloworld.R")

grid_page(

  theme = bitStat_theme,

  layout = c(
    "logo_area title title title title",
    ". . . . .",
    ". teacher student bitstat .",
    ". teacher_text student_text bitstat_text .",
    ". . . . .",
    "producer producer producer producer korea_R_logo"
  ),
  row_sizes = c(
    "100px",
    "0.5fr",
    "3.0fr",
    "0.5fr",
    "0.5fr",
    "0.3fr"
  ),
  col_sizes = c(
    "0.3fr",
    "1fr",
    "1fr",
    "1fr",
    "0.3fr"
  ),
  gap_size = "15px",
  # 1. Header -----------------------------
  grid_card(
    area = "logo_area",
    item_gap = "12px",
    uiOutput(outputId = "logoUi")
  ),
  grid_card_text(
    area = "title",
    content = "고교 오픈 통계",
    alignment = "center"
  ),
  # 2. Body -----------------------------
  grid_card(
    area = "teacher",
    item_gap = "12px",
    uiOutput(outputId = "teacherUi"),
    actionButton("teacherButton", "앱 바로가기")
  ),
  grid_card_text(
    area = "teacher_text",
    content = "교사용",
    alignment = "center",
    has_border = FALSE
  ),
  grid_card(
    area = "student",
    item_gap = "12px",
    uiOutput(outputId = "studentUi"),
    tags$a(href = "/teacher", "앱 바로가기")
  ),
  grid_card_text(
    area = "student_text",
    content = "학생용",
    alignment = "center",
    has_border = FALSE
  ),
  grid_card(
    area = "bitstat",
    item_gap = "12px",
    uiOutput(outputId = "BitStatUi"),
    actionButton(inputId ="bitstatButton",
                 label   = "앱 바로가기",
                 onclick ="window.open('https://bitstat.shinyapps.io/bitstat/', '_blank')")
  ),
  grid_card_text(
    area = "bitstat_text",
    content = "실습용",
    alignment = "center",
    has_border = FALSE
  ),
  # 3. Footer -----------------------------
  grid_card_text(
    area = "producer",
    content = "제작: 한국 R 사용자회",
    alignment = "center"
  ),
  grid_card(
    area = "korea_R_logo",
    item_gap = "12px",
    uiOutput(outputId = "logoKoreaUi")
  )

)
