library("plyr")
library("doBy")


#read all files in UCI HAR Dataset
filepath=file.path("UCI HAR Dataset","test","X_test.txt")
xtest=read.table(filepath)
filepath=file.path("UCI HAR Dataset","test","subject_test.txt")
subjecttest=read.table(filepath)
filepath=file.path("UCI HAR Dataset","test","y_test.txt")
ytest=read.table(filepath)

filepath=file.path("UCI HAR Dataset","train","X_train.txt")
xtrain=read.table(filepath)
filepath=file.path("UCI HAR Dataset","train","subject_train.txt")
subjecttrain=read.table(filepath)
filepath=file.path("UCI HAR Dataset","train","y_train.txt")
ytrain=read.table(filepath)

filepath=file.path("UCI HAR Dataset","features.txt")
features=read.table(filepath)
filepath=file.path("UCI HAR Dataset","activity_labels.txt")
activitylabels=read.table(filepath)

#Use features to rename colums
colnames(xtest)=features[,2]
colnames(xtrain)=features[,2]

#pull columns corresponding to mean and std
meancol=grep("mean\\(\\)", colnames(xtest))
stdcol=grep("std\\(\\)", colnames(xtest))
colgrab=c(meancol,stdcol)
colgrab=sort(colgrab)
xtestmeanstd=xtest[,colgrab]
xtrainmeanstd=xtrain[,colgrab]

#shape and rename subject and activity fields
colnames(subjecttest)="Subject"
colnames(subjecttrain)="Subject"
ytest=data.frame(join(ytest,activitylabels)[,2])
ytrain=data.frame(join(ytrain,activitylabels)[,2])
colnames(ytest)="Activity"
colnames(ytrain)="Activity"

#create dataframe with all fields and test and training et
dftrain=cbind(xtrainmeanstd,subjecttrain,ytrain)
dftest=cbind(xtestmeanstd,subjecttest,ytest)
df=rbind(dftrain,dftest)

#remove punctuation in column names
colnames(df)=gsub("[[:punct:]]", "", colnames(df))

#create summary of data by subject and activity according to mean of column
tidydf=summaryBy(.~Subject+Activity,data=df,FUN=mean)

#write out tidy dataset
write.table(tidydf,file="tidydata.txt",row.names=F)
