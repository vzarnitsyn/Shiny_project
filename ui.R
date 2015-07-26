#v Zarnitsyn July 2015
require(shiny)

shinyUI(fluidPage(
        headerPanel("Data products project. Some world data on interactive map."),
        sidebarPanel(
                selectInput("Color_choice", "Please choose colors for the map:",
                            c("Yellow to green"=1,"Green to red"=2,"Grey to black"=3)),
                
                selectInput("Field", "Choose what to show with colors:",
                            c("Population in millions"='Population_M',"GDP per capita, thousands of Int$ "='GDP_per_capita')),
                
                helpText("More help is available in the tab: Documentation.        ",
                         "All data used in this app were found in wikipedia for 2013 year.   ",
                         "Population is in millions of people.  GDP per capita is in International $")
                
        ),
        
        mainPanel(
                tabsetPanel(type = "tabs", 
                            tabPanel("Plot",htmlOutput("gvis")), 
                            tabPanel("Documentation",verbatimTextOutput("summary")), 
                            tabPanel("Table view", tableOutput("table"))
                )
        )
)
)