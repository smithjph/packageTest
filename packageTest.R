pkgTest <- function(x){
  # This function checks to see if required packages (x) are installed and installs them if needed
  # 
  # args: character vector of packages to be installed
  # 
  # returns: sentence finish
  new.packages <- x[!(x %in% installed.packages()[,'Package'])]
  if(length(new.packages)){
    install.packages(new.packages)
    print('Packages installed.', quote = F)
  } else {
    print('No new packages needed.', quote = F)
  }
}