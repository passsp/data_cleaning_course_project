The task asks to extract only the measurements of the mean and standard deviation for each measurement. Each measurement consisted of taking 3-axial linear acceleration and 3-axial angular velocity using gyroscope and accelerometer. This means that we are interested in the following variables:
- The estimated body acceleration. It is represented by variables (std stands for standard deviation):

    **BodyAcc_mean_X**

    **BodyAcc_mean_Y**

   **BodyAcc_mean_Z**

    **BodyAcc_std_X**

    **BodyAcc_std_Y**

    **BodyAcc_std_Z**
- The estimated gravity acceleration. It is represented by variables (std stands for standard deviation):

    **GravityAcc_mean_X**
    
    **GravityAcc_mean_Y**
  
    **GravityAcc_mean_Z**
   
    **GravityAcc_std_X**
   
    **GravityAcc_std_Y**
   
    **GravityAcc_std_Z**
- Triaxial Angular velocity from the gyroscope. 
   
    **BodyGyro_mean_X**
   
    **BodyGyro_mean_Y**
   
    **BodyGyro_mean_Z**
   
    **BodyGyro_std_X**
   
    **BodyGyro_std_Y**
   
    **BodyGyro_std_Z**
- Activity labels of the measurements. This is represented by the variable

    **activity**

which takes its valus in the set

WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
- An identifier of the subject who carried out the experiment is represented by the variable

    **subject_number**
    
which takes values from 1 to 30.

Then the script [run_analysis.R](https://github.com/passsp/data_cleaning_course_project/blob/master/run_analysis.R) calculates average values of measurements for each subject for each activity.
