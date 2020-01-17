pkgTest <- function(packages){
  # This function checks to see if required packages are installed 
  #   and installs them if needed, and loads them
  # 
  # args: character vector of packages to be installed
  # 
  # returns: sentence finish
  new.packages <- packages[!(packages %in% installed.packages()[,'Package'])]
  if(length(new.packages)){
    install.packages(new.packages)
    print('Packages installed.', quote = F)
  } else {
    print('No new packages needed.', quote = F)
  }
  for(package in packages){
    suppressPackageStartupMessages(library(package, character.only = T, quietly = T))
  }
  print('Packages loaded.', quote = F)
}
