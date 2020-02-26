# Bash script to reset the reveal of additional data sent by the fictitious collaborator

cp clean_data/2020-02-12-portal-data-joined.csv clean_data/portal_data_joined.csv
now=$(date +"%Y-%m-%d")
rm clean_data/${now}-portal_data_joined.csv 
rm raw_data/${now}-messydata_v7.csv