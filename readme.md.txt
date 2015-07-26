### Project data products

ui.r and server.R together generate googleVis based shiny presentation.
Very simple table with world data on 5 countries was manually typed into R.
The interactive shiny presentation demonstates this table in variety of ways:

On Tab: <Plot> the data is presented as colored map-plot. Value to present and color gradient can be selected on left panel of application. The map is interactive based on googleVis library. If you point over one of the colored segments of the map then the name of the country and the value of parameter will be shown in a small pop-up panel.

Left panel allows to choose two parameters: what data to present - [Population in millions or GDP per capita in internatinal $] and color gradient of the map (yellow to green, green to red, or grey to black).

On Tab: <Table>  there is an alternative simple presentation of all data as a plain table.

Fully functioning application is available on :
https://vzarnitsyn.shinyapps.io/Data_products_project