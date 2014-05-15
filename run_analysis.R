
#Reading field names
field.names <- read.table("./UCI HAR Dataset/features.txt", sep= "", header= FALSE)


#Standardizing names
field.names1 <- gsub("\\(", "", field.names$V2)
field.names1 <- gsub("\\)", "", field.names1)
field.names1 <- gsub("mean", "Mean", field.names1)
field.names1 <- gsub("std", "Std", field.names1)
field.names1 <- gsub(",", "", field.names1)
field.names2 <- data.frame(gsub("-", "", field.names1))
names(field.names2) <- "Name"


#Getting index corresponding to mean and standard deviation
ndx <- c(grep('\\-mean\\(\\)', field.names$V2), grep('\\-std\\(\\)', field.names$V2))
ndx <- sort(ndx)
ndx <- c(ndx, nrow(field.names2)+1, nrow(field.names2)+2) #Should consider also the index for the ActId and SubjectId variables


#Reading Activity lookup table
activities <- read.table("./UCI HAR Dataset/activity_labels.txt", 
                         col.names= c("ActId", "Activity"),
                         colClasses= c("numeric", "character"))


##TEST SET##
#Reading test set X
test.set <- read.table("./UCI HAR Dataset/test/X_test.txt", 
                      sep= "",
                      header= FALSE,
                      col.names= field.names2[, 1],
                      colClasses= rep("numeric", 561)
                      )

#Reading test set output Y
test.set.out <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names= "ActId", colClasses= "numeric")

#Reading test subjects
test.subj <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names= "SubjectId", colClasses= "numeric")


#Binding test set
test.set.out <- cbind(test.set, test.set.out, test.subj)


##TRAIN SET##
#Reading train set X
train.set <- read.table("./UCI HAR Dataset/train/X_train.txt", 
                        sep= "",
                        header= FALSE,
                        col.names= field.names2[, 1],
                        colClasses= rep("numeric", 561)
)

#Reading train set output Y
train.set.out <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names= "ActId", colClasses= "numeric")

#Reading train subjects
train.subj <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names= "SubjectId", colClasses= "numeric")

#Binding train set
train.set.out <- cbind(train.set, train.set.out, train.subj)


##MERGE##
#Concatenating Test and Train Set
complete.set <- rbind(train.set.out, test.set.out)


#Selecting only mean and std plus ActId and SubjectId
dataset1 <- complete.set[, ndx]


#Adding Activity Label to ActId
dataset1 <- merge(dataset1, activities, by= "ActId")


#Aggregating by Activity and Subject and computing the mean value of the variables (omitting NA)
tidy.data <- aggregate(dataset1[, 2:67], 
                       by= list(Activity= dataset1$Activity, SubjectId= dataset1$SubjectId), 
                       FUN= mean,
                       na.action= na.omit)


#Exporting dataset
write.table(tidy.data, "TidyData.txt", sep=";")

