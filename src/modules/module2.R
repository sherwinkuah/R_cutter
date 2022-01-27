# module 2

# try to clean dataset

cat("\n========================================================\n")
print('Entering Module 2')
cat("\n========================================================\n")

stroke_data <- read.csv('data/raw_data/healthcare-dataset-stroke-data.csv')

curdata <- stroke_data[!(stroke_data['bmi'] == 'N/A'),]

curdata1 = curdata[,2:12]

print(head(curdata1))

# module config file
module_config <- fromJSON(file = "./config/modules/module2_config.json")
# define output path to store data
datapath <- module_config$outputs$curdata1
# write csv to file
write.csv(curdata1, datapath)

cat('\nData has been cleaned and stored\n')

cat("\n--------------------------------------------------------------\n")
