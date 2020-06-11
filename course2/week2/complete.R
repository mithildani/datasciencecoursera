complete <- function(directory, id = 1:332){
    
    comp = data.frame(id=integer(), nobs=integer())
    
    for (i in id) {
        file = paste0(directory, "/", formatC(i, width=3, flag="0"), ".csv")
        data = read.csv(file)
        comp[nrow(comp)+1,] = list(i, nrow(data[(complete.cases(data)),]))
    }
    return(comp)
}

complete("~/datasciencecoursera/course1/week2/specdata", 1)
complete("~/datasciencecoursera/course1/week2/specdata", c(2, 4, 8, 10, 12))
