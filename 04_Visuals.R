
####Visualizations

#install.packages('yaml')
#devtools::install_github("hrbrmstr/streamgraph")
library(streamgraph)
# Create data:
year=rep(seq(1990,2016) , each=10)
name=rep(letters[1:10] , 27)
value=sample( seq(0,1,0.0001) , length(year))
data=data.frame(year, name, value)
# Basic stream graph
streamgraph(data, key="name", value="value", date="year")

installed.packages('markdown')



#install.packages('qqman')
# Create data
data <- data.frame (SNP = 1:20000*5 , CHR=c(rep(1:5, each = 20000)), BP= rep(1:20000, 5), P=rnorm(20000*5, 0.2, 0.3) )
data <- data[data$P>0,]
#Library
library(qqman)
library(RColorBrewer)
# Plot !
manhattan(data , suggestiveline = F, genomewideline = F , col=brewer.pal(5, "Set2") , cex=0.7)







install.packages('plotly')
library(plotly)
#Polar Scatter Charts

p <- plot_ly(
  plotly::hobbs, r = ~r, t = ~t, color = ~nms, alpha = 0.5, type = "scatter"
)
layout(p, title = "Sample Polar Charts", plot_bgcolor = toRGB("grey90"))



#Polar Scatter Charts - 2

p <- plot_ly(plotly::wind, r = ~r, t = ~t) %>% add_area(color = ~nms)
layout(p, radialaxis = list(ticksuffix = "%"), orientation = 270)


##Sample ggplot
d <- diamonds[sample(nrow(diamonds), 1000), ]
p <- ggplot(data = d, aes(x = carat, y = price)) +
  geom_point(aes(text = paste("Clarity:", clarity))) +
  geom_smooth(aes(colour = cut, fill = cut)) + facet_wrap(~ cut)

ggplotly(p)




