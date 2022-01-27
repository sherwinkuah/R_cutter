# module 2a

cat("\n========================================================\n")
print('Entering Module 2a')
cat("\n========================================================\n")


# function to plot p1
generate_speed_plot <- function(data, title) {
  speed <- data$speed
  dist <- data$speed
  plot <- ggplot(data, aes(speed,dist))+
    geom_point() +
    ggtitle(title)
  return(plot)
}

# load module config file
module_config <- fromJSON(file = "./config/modules/module2a_config.json")
title <- module_config$inputs$plots$title
plotpath <- module_config$outputs$speedplot
# run the function
png(plotpath) 
p1 <- generate_speed_plot(data=cars, title)
print(p1)
dev.off() 


#png("results/rplot_hwy_vs_displ.png") 
#p2 <- ggplot(mpg, aes(displ, hwy, colour = class))  + geom_point() +
#  ggtitle('Plot of highway miles vs engine displacement') 

#print(p2)
#dev.off() 

cat("\n--------------------------------------------------------------\n")