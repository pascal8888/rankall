4 Ranking hospitals in all states
Write a function called rankall that takes two arguments: an outcome name (outcome) and a hospital rank-
    ing (num). The function reads the outcome-of-care-measures.csv le and returns a 2-column data frame
containing the hospital in each state that has the ranking specied in num. For example the function call
rankall("heart attack", "best") would return a data frame containing the names of the hospitals that
are the best in their respective states for 30-day heart attack death rates. The function should return a value
for every state (some may be NA). The rst column in the data frame is named hospital, which contains
the hospital name, and the second column is named state, which contains the 2-character abbreviation for
the state name. Hospitals that do not have data on a particular outcome should be excluded from the set of
hospitals when deciding the rankings.
Handling ties. The rankall function should handle ties in the 30-day mortality rates in the same way
that the rankhospital function handles ties.
The function should use the following template.
rankall <- function(outcome, num = "best") {
    ## Read outcome data
    ## Check that state and outcome are valid
    ## For each state, find the hospital of the given rank
    ## Return a data frame with the hospital names and the
    ## (abbreviated) state name
}
NOTE: For the purpose of this part of the assignment (and for eciency), your function should NOT call
the rankhospital function from the previous section.
The function should check the validity of its arguments. If an invalid outcome value is passed to rankall,
the function should throw an error via the stop function with the exact message \invalid outcome". The num
variable can take values \best", \worst", or an integer indicating the ranking (smaller numbers are better).
If the number given by num is larger than the number of hospitals in that state, then the function should
return NA.
Here is some sample output from the function.
4
> source("rankall.R")
> head(rankall("heart attack", 20), 10)
hospital state
AK <NA> AK
AL D W MCMILLAN MEMORIAL HOSPITAL AL
AR ARKANSAS METHODIST MEDICAL CENTER AR
AZ JOHN C LINCOLN DEER VALLEY HOSPITAL AZ
CA SHERMAN OAKS HOSPITAL CA
CO SKY RIDGE MEDICAL CENTER CO
CT MIDSTATE MEDICAL CENTER CT
DC <NA> DC
DE <NA> DE
FL SOUTH FLORIDA BAPTIST HOSPITAL FL
> tail(rankall("pneumonia", "worst"), 3)
hospital state
WI MAYO CLINIC HEALTH SYSTEM - NORTHLAND, INC WI
WV PLATEAU MEDICAL CENTER WV
WY NORTH BIG HORN HOSPITAL DISTRICT WY
> tail(rankall("heart failure"), 10)
hospital state
TN WELLMONT HAWKINS COUNTY MEMORIAL HOSPITAL TN
TX FORT DUNCAN MEDICAL CENTER TX
UT VA SALT LAKE CITY HEALTHCARE - GEORGE E. WAHLEN VA MEDICAL CENTER UT
VA SENTARA POTOMAC HOSPITAL VA
VI GOV JUAN F LUIS HOSPITAL & MEDICAL CTR VI
VT SPRINGFIELD HOSPITAL VT
WA HARBORVIEW MEDICAL CENTER WA
WI AURORA ST LUKES MEDICAL CENTER WI
WV FAIRMONT GENERAL HOSPITAL WV
WY CHEYENNE VA MEDICAL CENTER WY
Save your code for this function to a le named rankall.R.
Use the submit script provided to submit your solution to this part. There are 3 tests that need to be passed
for this part of the assignment.
5
