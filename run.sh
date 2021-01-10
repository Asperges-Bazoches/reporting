#!/bin/bash

source config.sh
wget "https://$CR_USR:$CR_PWD@$CR_URL" -O data.csv

R -e "rmarkdown::render('reporting.Rmd')"

firefox reporting.html
