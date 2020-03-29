complete<-function(directory,id=1:332)
{
    dat<-data.frame()
    files<-list.files(directory, full.names = TRUE)
    for (i in id) {
        temp<-read.csv(files[i])
        dat<-rbind(dat,c(i,sum(complete.cases(temp))))
    }
    names(dat)<-c('id','nobs')
    dat
}