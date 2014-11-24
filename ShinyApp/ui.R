library(shiny)
require(rCharts)
LEBmale <- read.csv("data/Male.csv")
shinyUI(pageWithSidebar(
    headerPanel("Life Expectancy at Birth (LEB) of Different Country"),
    sidebarPanel(
        radioButtons(inputId="gender", label="Gender", choices=c("Female","Male")),
        selectInput(inputId="country", label="Country", choices=sort(levels(LEBmale$country)),
                    multiple = FALSE, selected="United States"),
        actionButton("goButton", "Go!")
       
    ),
    mainPanel(
        tabsetPanel(
# If there are same thing (such as: verbatimTextOutput("oicountry"),) in two tabPanel, 
# then all things in tabsetPanel can not been seen. 
            tabPanel("Mean value",
                     h5("Mean LEB value of recent year:"),
                     verbatimTextOutput("oiLEB"),
                     img(src="Pic_Data.png", height = 600, width =600)
                    ),
            tabPanel("Summary",
                     h5("Available data for"),
                     verbatimTextOutput("oigender"), 
                     verbatimTextOutput("oicountry"), 
                     h5("Mean Life Expectancy at Birth Value (years): "),
                     dataTableOutput("oiLEBcattable")
                    ),
            tabPanel("Plot",
                     h5("Mean LEB Trend per Years: "),
                     showOutput("Plot1","highcharts")
                    ),   
            tabPanel("About",
              p(strong("Author : Thu Ra Win Hein")), 
              p(strong("Documentation:",a("Life Expectancy at Birth (LEB) of Different Country",href="README.html"))),
              p(strong("Github repository:",
                        a("Developing Data Products - Project - Shiny App",
                          href="https://github.com/thurawinhein/Course_Project-Developing_Data_Products")))
            )   
        )
    )
)
)