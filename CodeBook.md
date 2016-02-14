The task asks to extract only the measurements of the mean and standard deviation for each measurement. Each measurement consisted of taking 3-axial linear acceleration and 3-axial angular velocity using gyroscope and accelerometer. This means that we are interested in the following variables:
- The estimated body acceleration. It is represented by variables (std stands for standard deviation):

    **tBodyAcc_mean_X**

    **tBodyAcc_mean_Y**

   **tBodyAcc_mean_Z**

    **tBodyAcc_std_X**

    **tBodyAcc_std_Y**

    **tBodyAcc_std_Z**
- The estimated gravity acceleration. It is represented by variables (std stands for standard deviation):

    **tGravityAcc_mean_X**
    
    **tGravityAcc_mean_Y**
  
    **tGravityAcc_mean_Z**
   
    **tGravityAcc_std_X**
   
    **tGravityAcc_std_Y**
   
    **tGravityAcc_std_Z**
- Triaxial Angular velocity from the gyroscope. 
   
    **tBodyGyro_mean_X**
   
    **tBodyGyro_mean_Y**
   
    **tBodyGyro_mean_Z**
   
    **tBodyGyro_std_X**
   
    **tBodyGyro_std_Y**
   
    **tBodyGyro_std_Z**
- Activity labels of the measurements. This is represented by the variable

    **activity**

which takes its valus in the set

WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
- An identifier of the subject who carried out the experiment is represented by the variable

    **subject_number**
    
which takes values from 1 to 30.

Then the script "run_analysis.R" calculates average values of measurements for each subject for each activity.
