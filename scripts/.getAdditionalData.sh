# Bash script to unhide the additional data sent by the fictitious collaborator

mv clean_data/portal_data_joined.csv clean_data/2020-02-12-portal-data-joined.csv
now=$(date +"%Y-%m-%d")
mv clean_data/.portal_data_joined_2000.csv clean_data/${now}_portal_data_joined.csv 
mv clean_data/.portal_data_joined.csv clean_data/portal_data_joined.csv
touch raw_data/${now}-messydata_v7.csv