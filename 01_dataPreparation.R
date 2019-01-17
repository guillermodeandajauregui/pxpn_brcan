#data preparation
library(tidyverse)
library(data.table)

#list files
my_files <- list.files(path = "data/exp_matrices/", 
                       pattern = "*.tsv", 
                       full.names = TRUE
                       )

#read files
my_data = map(.x = my_files, .f = fread)

#rename my list
my_names <-    list.files(path = "data/exp_matrices/", 
                          pattern = "*.tsv")%>%
                strsplit(split = "_")%>%
                map_chr(function(x){x[1]})


#


