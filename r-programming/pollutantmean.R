pollutantmean<-function(directory,pollutant,id = 1:332)
{
    files<-list.files(directory, full.names = TRUE)
    dat<-data.frame()
    for (i in id) {
        dat <- rbind(dat, read.csv(files[i]))
    }
    dat_sub<-dat[[pollutant]]
    mean(dat_sub, na.rm = T)
    #mean(dat, na.rm = TRUE)
}