library(dplyr)
# Read all the Data
dir <- "C:\\Users\\cools\\Desktop\\R\\Course3\\Week4\\Project\\UCI HAR Dataset\\"
activity <- read.table(paste0(dir,"activity_labels.txt"),col.names = c("index","activity"))
features   <- read.table(paste0(dir,"features.txt"),col.names = c("index","feature"))

# Training Data
train_sub <- read.table(paste0(dir,"train\\subject_train.txt"))
train_X   <- read.table(paste0(dir,"train\\X_train.txt"))
train_y   <- read.table(paste0(dir,"train\\y_train.txt"))

# Test Data
test_sub <- read.table(paste0(dir,"test\\subject_test.txt"))
test_X   <- read.table(paste0(dir,"test\\X_test.txt"))
test_y   <- read.table(paste0(dir,"test\\y_test.txt"))

# Combine Training and Test Data
sub <- rbind(train_sub,test_sub)
X   <- rbind(train_X,test_X)
y   <- rbind(train_y,test_y)

rm(train_sub,train_X,train_y)
rm(test_sub,test_X,test_y)

# Combine into Dataframe by columns
Data <- cbind(sub,y,X)
names(Data) <-c("Subject","Activity",as.character(features$feature))

# rm(sub,X,y)
# Only mean and std measurements extracted //remove others
Data <- Data %>% select(Subject,Activity,contains("mean"),contains("std"))


# Replace Activity ID with Activity Name
Data$Activity <- activity$activity[Data$Activity]

# Label Data Set with descriptive names
names(Data) <- gsub("Body","Body",names(Data))
names(Data) <- gsub("Gravity","Gravity",names(Data),ignore.case = T)
names(Data) <- gsub("Acc","Accelerometer",names(Data))
names(Data) <- gsub("Gyro","Gyroscope",names(Data))
names(Data) <- gsub("Jerk","Jerk",names(Data))
names(Data) <- gsub("Mag","Magnitude",names(Data))

names(Data) <- gsub("mean","Mean",names(Data))
names(Data) <- gsub("std","SD",names(Data))
names(Data) <- gsub("Freq","Frequency",names(Data))

names(Data) <- gsub("^t","Time",names(Data))
names(Data) <- gsub("^f","Frequency",names(Data))
names(Data) <- gsub("\\(t","\\(Time",names(Data))

names(Data) <- gsub("angle","Angle",names(Data))
names(Data) <- gsub("-","",names(Data))
names(Data) <- gsub("\\),",",",names(Data))

# names(Data)

# Create and Export New Data with averages for each activity and subject
Data2 <- Data %>% group_by(Subject, Activity) %>% summarise_all(mean)
write.table(Data2,"Data2.txt")
