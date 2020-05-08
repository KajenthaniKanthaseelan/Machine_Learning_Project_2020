#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

navbarPage(title = "Fraud analysis", theme = "style.css", id = "navbar_page",
           tabPanel("Create model", source(file.path("ui", "nav-page.R"),  local = TRUE)$value),
           useShinyjs()
)
