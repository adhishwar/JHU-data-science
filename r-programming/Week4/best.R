best<-function(state,out)
{
    source('~/coursera/datascience/JHU_specialisation/r-programming/Week4/state_outcome_based_ranking.R')
    state_specific_data <- state_outcome_based_ranking(state,out)
    state_specific_data[1,1]
}