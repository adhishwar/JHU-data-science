corr<-function(directory,threshold = 0)
{
    cor_vector<-c()
    files<-list.files(directory,full.names = T)
    for(i in seq_len(332))
    {
        dat<-read.csv(files[i])
        ccases<-sum(complete.cases(dat))
        if(ccases>threshold)
        {
            co_value<-cor(dat[['sulfate']],dat[['nitrate']], use = 'complete.obs')
            cor_vector<-c(cor_vector,co_value)
        }
    }
    cor_vector
}