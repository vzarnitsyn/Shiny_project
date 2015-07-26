#v Zarnitsyn July 2015
require(googleVis)
require(shiny)
## Prepare data to be displayed
## Load presidential election data by state from 1932 - 2012

myData<-data.frame(Country=c('China','India','USA','Indonesia','Brazil'),
                   Population_M=c(1371,1275,321,256,205),
                   GDP_per_capita=c(11907,5418,53042,9561,15038))

shinyServer(function(input, output) {
        
        
        # Generate an Instruction text  of the data
        output$summary <- renderPrint({
                c("Tab: <Plot>. The data is presented as colored plot. Value to present and color gradient can be selected on left panel.",
                "Map is interactive based on googleVis library. If your pointer is over one of the colored segments of the map - the name of the country and the value of parameter will be shown in a small pop-up panel.",
                "Two parameters are available for choice: Population in millions and GDP per capita in internatinal $)",
                "Tab: <Table>  Alternative simple presentation of all data as a plain table")
        })
        
        output$table <- renderTable({myData})
        
        output$gvis <- renderGvis({
                        field=input$Field
                        choice=input$Color_choice
                   if (choice == 1){
                        g<-gvisGeoChart(myData,locationvar="Country", colorvar=field,
                             options=list( width=500, height=400,colorAxis="{colors:['yellow', 'green']}"
                             ))     
                   }
                     if (choice ==2){
                        g<-gvisGeoChart(myData,locationvar="Country", colorvar=field,
                              options=list( width=500, height=400,colorAxis="{colors:['green', 'red']}"
                              ))     
                        }
                      if (choice==3){
                         g<-gvisGeoChart(myData,locationvar="Country", colorvar=field,
                               options=list( width=500, height=400,colorAxis="{colors:['grey', 'black']}"
                                 ))     
                      }
                        g
        })
})