# Script to create report for given year

for (each_year in 1979:2002){
rmarkdown::render(input = "reports/yearly-template.Rmd", output_file = paste0(as.character(each_year),
                                                                              "_yearly-report.html"), 
                  params = list("specific_year" = each_year))
}
