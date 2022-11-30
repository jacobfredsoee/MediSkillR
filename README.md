# MediSkillR
A collection of function for connecting and getting data from the MediSkill API


## Install by:
```R
devtools::install_github("jacobfredsoee/MediSkillR")
library(MediSkillR)
```

## Usage

```R
library(MediSkillR)

mediConn = mediskillConnection('your token here', "https://mediskill.dk/API/")

allProcedures = getProcedures(mediConn)
```
