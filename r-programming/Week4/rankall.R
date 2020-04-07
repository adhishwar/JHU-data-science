rankall <- function(out,rank='best')
{
    possible_outcomes <- c('heart attack','heart failure','pneumonia')
    
    #checks if the value of and out correspond to valid outcomes
    pos <- match(out,possible_outcomes)
    if(is.na(pos))
        stop('invalid outcome')
    
    if(pos==1){ col <- 11   
    } else if(pos==2) { col <- 17
    } else if(pos==3) { col <- 23
    }
    
    #reads the data from the csv file
    outcome <- read.csv('rprog-data-ProgAssignment3-data/outcome-of-care-measures.csv',colClasses = 'character',na.strings='Not Available')
    
    #takes out only the relevant columns for this task and stores in a seperate object
    data_for_best <- outcome[,c(2,7,col)]
    rm(outcome,col,possible_outcomes,pos)
    
    #converts columns 3,4,5 into numeric type
    data_for_best[,3] <- as.numeric(data_for_best[,3])

    #splits the data_for_best variable based on the values of the State variable. So now it is a list of 54 data frames
    data_for_best <- split(data_for_best,data_for_best$State)
    
    #omits all the rows that have an NA value in them in all of the  54 state wise sorted data frames
    no_na_data <- lapply( data_for_best , na.omit)
    rm(data_for_best)
    
    #transform rank in case it takes on the values 'best' or 'worst'
    decreasing <- FALSE
    if(rank=='best')
        rank <- 1
    if(rank=='worst')
    {
        decreasing <- TRUE
        rank <- 1
    }
    
    #function that takes a data frame and sorts it on the basis of outcome and returns the hospital name and state at a rank
    sort_df <- function(df)
    {
        df <- df[order(df[,3],df[,1], decreasing = c(decreasing,F)),]
        # l <- list(df[rank,1],df[1,2])
        data.frame(name=as.vector(df[rank,1]),state=as.vector(df[1,2]))
    }
    
    #calls sort_df for each of the 54 data frames in the list of NA-omitted, state wise sorted data
    item <- lapply(no_na_data , sort_df)
    
    #flattens the list of data frames into a single data frame
    item <- do.call('rbind',item)
    
    rm(no_na_data,decreasing)
    item
}