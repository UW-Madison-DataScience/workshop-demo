# Bash script to unhide the additional data sent by the fictitious collaborator

cp clean_data/portal_data_joined.csv clean_data/2020-02-12-portal-data-joined.csv
now=$(date +"%Y-%m-%d")
cp clean_data/.portal_data_joined_2000.csv clean_data/${now}-portal_data_joined.csv 
cp clean_data/.portal_data_joined.csv clean_data/portal_data_joined.csv
touch raw_data/${now}-messydata_v7.csv