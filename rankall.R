rankall <- function(outcome, num = "best") {
data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
## Check to ensure outcome is correct (this is a large loop encapsulating most of the code)
if (outcome == "heart attack" || outcome == "heart failure" || outcome == "pneumonia") {
## Initialize the working data frame "hs" - stands for "Hospital | State" - which is the required output of the function) with the subset of data we'll be working with.  The end result of each "if (outcome == "xxx) {}" code blocks below should be just the first two columns of this data frame.
    hs <- data.frame(Hospital=character(),State=character(),HA.Rank=integer(),HF.Rank=integer(),PN.Rank=integer(),HA.Mor.Rate=integer(),HF.Mor.Rate=integer(),PN.Mor.Rate=integer(),stringsAsFactors=FALSE)
## the columns that contain comparison data needs to be converted from string to numeric
    data[,11] <- as.numeric(data[,11])
    data[,17] <- as.numeric(data[,17])
    data[,23] <- as.numeric(data[,23])
## Subset the entire data frame loaded from csv to just the columns we'll work with. Columns 3,4,5 below (set to NA) are not present in the file, these will be calculated columns for the rankings by outcome.
    for (i in 1: nrow(data)) {
        hs[i,1] <- data$Hospital.Name[i]
        hs[i,2] <- data$State[i]
        hs[i,3] <- NA
        hs[i,4] <- NA
        hs[i,5] <- NA
        hs[i,6] <- data[i,11]
        hs[i,7] <- data[i,17]
        hs[i,8] <- data[i,23]
    }
#       hs[,3] <- rank(hs[,6])
#     hs[,4] <- rank(hs[,7])
#     hs[,5] <- rank(hs[,8])
## Make state data frames
    unique_States <- sort(unique(hs$State))
    for (i in 1:length(unique_States)) {
        subState <- split(hs, hs$State)
    }
#     for (i in 1:length(subState)) {
#         subState[i][,3] <- rank(subState[i][,6])
#     }
## Begin the ranking by outcome
    if (outcome == "heart attack") {

    return(subState)
    #return(hs[1:2])
    }
## end outcome heart attack
    if (outcome == "heart failure") {

    return(hs[1:2])
    }
## end outcome heart failure
    if (outcome == "pneumonia") {

    return(hs[1:2])
    }
## end outcome pneumonia
## End the ranking by outcome
    } else {
## End - Check to ensure outcome is correct (this is a large loop encapsulating most of the code)
        stop("invalid outcome")
    }
    #return(hs)
}

## Check that state and outcome are valid
## For each state, find the hospital of the given rank

## ties.method = c("average", "first", "random", "max", "min"))