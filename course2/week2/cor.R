corr <- function(directory, threshold=0){
    
    cr = vector()
    
    for (i in 1:332) {
        file = paste0(directory, "/", formatC(i, width=3, flag="0"), ".csv")
        data = read.csv(file)
        data = data[(complete.cases(data)),]
        if (nrow(data) > threshold){
            cr = c(cr, cor(data$sulfate, data$nitrate))    
        }
    }
    return(cr)
}

cr = corr("~/datasciencecoursera/course1/week2/specdata", 150)
head(cr)
summary(cr)
length(cr)
