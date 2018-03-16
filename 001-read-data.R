# Load libraries----------------------------------------------------------------------
#library(lubridate)
#library(rdwd)
#library(stringr)
#library(sp)
#library(stringr)
#library(sp)
#library(plyr)
#library(ggplot2)
#library(scales)

# pathogen models----------------------------------------------------------------------
# bluetongue virus
btv <- function(Temp){0.0003*Temp*(Temp-10.4057)/24}

# schmallenberg virus
sbv <- function(Temp){(0.019*(Temp-13.3))/24}

# dengue virus
denv <- function(Temp){(-0.1393+0.008*Temp)/24}

# dirofilaria immitis
diro <- function(Temp){(Temp-14/130)/24}

# malaria
malaria <- function(Temp){(0.000126*Temp+(Temp-14.244)*sqrt(34.4-Temp))/24}

# west nile virus
wnv <- function(Temp){(-0.132+0.0092*Temp)/24}