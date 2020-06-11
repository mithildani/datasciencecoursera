pollutantmean = function(directory, pollutant, id = 1:332) {
    
    data = NULL
    files = paste0(directory, "/", formatC(id, width=3, flag="0"), ".csv")
    
    for (file in files) {
        d = read.csv(file)
        data = rbind(data, d)
    }
    mean = mean(data[[pollutant]], na.rm = TRUE)
    mean
}

pollutantmean("~/datasciencecoursera/course1/week2/specdata", "sulfate", 1:10)
