complete <- function(directory,id = 1:332)
{
  Montior_id <- list.files(directory,full.names = TRUE)
  airpollute_details <- data.frame()
  nobs <-  list()
  j <- 1
    for ( i in id)
  {
      details <- read.csv(Montior_id[i])
      good_records<-  complete.cases(details)
      nobs[[j]] <- sum(good_records) # storing the number of nobs in the good cases
      j <- j + 1
    }
  airpollute_details <- cbind(id,nobs)
  airpollute_details
  }

