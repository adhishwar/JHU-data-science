# the following function takes a 2 letter abbreviated state name and outcome as input and returns a data frame that contains the state data
state_outcome_based_ranking <- function(state,out,decreasing = F)
{
    #reads the data from the csv file
    outcome <- read.csv('rprog-data-ProgAssignment3-data/outcome-of-care-measures.csv',colClasses = 'character',na.strings='Not Available')
    
    possible_outcomes <- c('heart attack','heart failure','pneumonia')
    
    #takes out only the relevant columns for this task and stores in a seperate object
    data_for_best <- outcome[,c(2,7,11,17,23)]
    rm(outcome)
    
    #checks if the value of state and out correspond to valid states and outcomes
    if(!state %in% data_for_best$State)
        stop('invalid state')
    pos <- match(out,possible_outcomes)
    if(is.na(pos))
        stop('invalid outcome')
    
    #converts columns 3,4,5 into numeric type
    data_for_best[,c(3,4,5)] <- apply(data_for_best[,c(3,4,5)], 2, as.numeric)
    
    #splits the data_for_best variable based on the values of the State variable. So now it is a list of 54 data frames
    data_for_best <- split(data_for_best,data_for_best$State)
    
    #takes the relevant state specific data into a seperate object
    state_specific_data <- data_for_best[[state]]
    
    #sorts the state_specific_data DF on the basis of mortality rate and hospital name
    state_specific_data <- state_specific_data[order(state_specific_data[pos+2],state_specific_data[1], decreasing = c(decreasing,T)),c(1,2,pos+2)]
    
    state_specific_data
}