rankhospital <- function(state,out,rank)
{
    decreasing <- FALSE
    if(rank=='best')
        rank <- 1
    if(rank=='worst')
    {
        decreasing <- TRUE
        rank <- 1
    }
    source('~/coursera/datascience/JHU_specialisation/r-programming/Week4/state_outcome_based_ranking.R')
    state_specific_data <- state_outcome_based_ranking(state,out,decreasing)
    state_specific_data[rank,1]
}