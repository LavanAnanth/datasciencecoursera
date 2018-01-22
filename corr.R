corr <- function(directory,threshold=0)
{
  Montior_id <- list.files(directory,full.names = TRUE)
  airpollute_details <- data.frame()
  cor_out <- vector()
  threshold_Check <- 0
  for ( i in seq_along(Montior_id))
  {
    airpollute_details <- rbind(airpollute_details,read.csv(Montior_id[i]))
    good_records<-  complete.cases(airpollute_details)
    threshold_Check <- sum(good_records)
    if(threshold_Check>threshold)
    {
    Cor_records<- airpollute_details[good_records,]
    cor_out <- c(cor_out,cor(Cor_records$nitratesulfate,Cor_records$sulfate))
    }
  }
 return(cor_out)
}