ccode_download_fread <- function(file){
  baseurl <- "http://www.correlatesofwar.org/data-sets/"
  
  if(file == "COW Country Codes") {
    ccode <- data.table::fread(paste0(baseurl, "cow-country-codes/cow-country-codes/at_download/file"))
    return(ccode)
  }
  
  else if (file == "states2016"){
    state <- data.table::fread(paste0(baseurl, "state-system-membership/states2016"))
    return(state)
  }
  else {print("File not found, please make sure you type the file name exactly as it appears before the '.csv' on COW's website.")}
}

ccode_fread <- ccode_download_fread("COW Country Codes")
state <- ccode_download_fread("states2016")
war <- ccode_download_fread("war")
