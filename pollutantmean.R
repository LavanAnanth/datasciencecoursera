pollutantmean <- function(directory,pollutant,id = 1:332)
   {
         Montior_id <- list.files(directory,full.names = TRUE)
         airpollute_details <- data.frame()
            for ( i in id)
        airpollute_details <- rbind(airpollute_details,read.csv(Montior_id[i]))
         
         mean(airpollute_details[,pollutant],na.rm=TRUE)
    }

    