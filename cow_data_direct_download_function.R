cow_data_download <- function(file){
  
  require("data.table")
  #Each if or else if command downloads one file. 
  
  
  if(file == "COW Country Codes") { #This downloads the country abbreviations, ccodes, and country names files. 
    ccode <- data.table::fread("http://www.correlatesofwar.org/data-sets/cow-country-codes/cow-country-codes/at_download/file")
    return(ccode)
  }
  
  else if (file == "states2016"){ #This downloads state membership and years of entry/exit as of 2016. 
    states2016 <- data.table::fread("http://www.correlatesofwar.org/data-sets/state-system-membership/states2016/at_download/file")
    return(states2016)
  }
  
  else if (file == "majors2016") { #This downloads major powers dataset. 
    majors2016 <-  data.table::fread("http://www.correlatesofwar.org/data-sets/state-system-membership/majors2016/at_download/file")
    return(majors2016)
  }
  
  else if (file == "system2016") { #This downloads system membership country-year format. 
    system2016 <-  data.table::fread("http://www.correlatesofwar.org/data-sets/state-system-membership/system2016/at_download/file")
    return(system2016)
  }
  
  else if (file == "nonstate_war"){ #Nonstate war data. 
    nonstate_war <- data.table::fread("http://www.correlatesofwar.org/data-sets/COW-war/non-state-war-data-1/at_download/file")
    return(nonstate_war)
  }
  
  else if (file == "intrastate_war") { #Intrastate war data. 
    intrastate_war <- data.table::fread("http://www.correlatesofwar.org/data-sets/COW-war/intra-state-war-data-v4-1/at_download/file")
    return(intrastate_war)
  }
  
  else if (file == "interstate_war") { #Interstate war data. 
    interstate_war <- data.table::fread("http://www.correlatesofwar.org/data-sets/COW-war/inter-state-war-data/at_download/file")
  }
  
  # else if (file == "interstate_war_dyadic") {
  #   This is a sticking point because this link is a zip folder. I need to figure out how to access it and download one of the files.
  #http://www.correlatesofwar.org/data-sets/COW-war/dyadic-inter-state-war-dataset/at_download/file
  # }
  
  else if (file == "extrastate_war") {
    extrastate_war <- data.table::fread("http://www.correlatesofwar.org/data-sets/COW-war/extra-state-war-data/at_download/file")
    return(extrastate_war)
  }
  
  else {print("File not found, please make sure you type the file name exactly as it appears before the '.csv' on COW's website.")}
}

ccode <- cow_data_download("COW Country Codes")
states2106 <- cow_data_download("states2016")
majors2016 <- cow_data_download("majors2016")
system2016 <- cow_data_download("system2016")
nonstate_war <- cow_data_download("nonstate_war")
intrastate_war <- cow_data_download("intrastate_war")
interstate_war <- cow_data_download("interstate_war")
extrastate_war <- cow_data_download("extrastate_war")

war <- cow_data_download("war")
