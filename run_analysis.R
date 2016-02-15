library(dplyr)

#auxillary functions to make variable names reusable and more readable
remove_brackets_and_minus <- function(s)
{
   s <- gsub("[(]|[)]", "", s)
   s <- gsub("-", "_", s)
   return(s)
}

remove_t <- function(s)
{
   s <- sub("t", "", s) 
}


#download the data to working directory
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, "UCI HAR Dataset.zip")
unzip(zipfile = "UCI HAR Dataset.zip")


#Read data from the specified dataset
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
features <- read.table("UCI HAR Dataset/features.txt")

X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")


#Merge training and test data
X <- rbind(X_train, X_test)
y <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)


#Give appropriate names to observation variables
names(X) <- sapply(features[,2], remove_brackets_and_minus)


#Now we create a table which contains only
#the measurements on the mean and standard deviation for each measurement.
#Accordingly, we drop all the derived variables
X_mean_std <- X[,grepl("^t", names(X))&grepl("((BodyAcc_)(mean|std))|((GravityAcc_)(mean|std))|((BodyGyro_)(mean|std))", names(X))]
names(X_mean_std) <- sapply(FUN = remove_t, names(X_mean_std))

#Here we add two new columns: "subject_number" gives us a number of
#a subject for which a measurement was done and "activity" stands for
#activity she was doing during that measurement
X_mean_std$activity <- sapply(y, function(a) {activity_labels[a,2]})
X_mean_std$subject_number <- unlist(subject)


#Group observations by subject and activity
X_groupped <- group_by(X_mean_std, activity, subject_number)


#Calculate means for each pair (activity, subject_number)
X_groupped_means <- summarise_each(X_groupped, funs(mean), everything())
write.table(x = X_groupped_means, file = "groupped_averages.txt", row.names = FALSE, quote = FALSE)


