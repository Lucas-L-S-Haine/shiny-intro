require("shiny")

ui <- fluidPage(
  titlePanel(title = "Basic UI", windowTitle = "Basic UI"),
  markdown("### Example 1: Free Text"),
  textInput("name", "What's your name?"),
  passwordInput("password", "What's your password?"),
  textAreaInput("story", "Tell me about yourself", rows = 3),
  markdown("### Example 2: Numeric Inputs"),
  numericInput("num", "Number one", value = 0, min = 0, max = 100),
  sliderInput("num2", "Number two", value = 50, min = 0, max = 100),
  sliderInput("rng", "Range", value = c(10, 20), min = 0, max = 100),
  markdown("### Example 3: Dates"),
  dateInput("dob", "When were you born?"),
  dateRangeInput("holiday", "When do you want to go on vacation next?")
)

server <- function(input, output, session) {
}

app <- shinyApp(ui, server)

port <- Sys.getenv("PORT", 4000)
options(shiny.port = as.numeric(port))

runApp(app)
