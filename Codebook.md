---
title: "Codebook"
author: "Rohith"
date: "5/8/2019"
output: pdf_document
---

This project contains data collected with smartphone to recognise human activities and postures during activities

## Identifiers
- Subjects: Experiments were conducted on 30 subjects numbered 1 to 30. All subjects are under age group 19-48 years.
- Activities: Data is collected on different activites done by subjects. A total of six activities are done by subject. It consists of 3 static activities(Standing, Sitting, Lying) and 3 dynamic activities(Walking, Walking Downstairs, Walking Upstairs).

## Activity labels
- WALKING (1): Data is collected while subject is walking
- WALKING_UPSTAIRS (2): Subject is walking upstairs
- WALKING_DOWNSTAIRS (3): Subject is walking downstairs
- SITTING (4): Subject is Sitting
- STANDING (5): Subject is sitting
- LAYING (6): Subject is lying on bench

## Measurements
All the measurements were collected using Samsung Galaxy SII phone tied to waist. 3-axial linear acceleration and 3-axial angular velocity are collected using the embedded accelerometer and gyroscope. It also included measurements of posture transitions i.e stand-to-sit, sit-to-lie, sit-to-stand, lie-to-sit, stand-to-lie and lie-to-stand. A total of 561 feature vector with frequency and time domain variables. Below are the variable obtained after tidying and doing analysis

- subject                                                                
- activity                                                               
- timeDomainBodyAccelerometerMeanX                                       
- timeDomainBodyAccelerometerMeanY                                       
- timeDomainBodyAccelerometerMeanZ                                       
- timeDomainBodyAccelerometerStandardDeviationX                          
- timeDomainBodyAccelerometerStandardDeviationY                          
- timeDomainBodyAccelerometerStandardDeviationZ                          
- timeDomainGravityAccelerometerMeanX                                    
- timeDomainGravityAccelerometerMeanY                                    
- timeDomainGravityAccelerometerMeanZ                                    
- timeDomainGravityAccelerometerStanda- rdDeviationX                       
- timeDomainGravityAccelerometerStandardDeviationY                       
- timeDomainGravityAccelerometerStandardDeviationZ                       
- timeDomainBodyAccelerometerJerkMeanX                                   
- timeDomainBodyAccelerometerJerkMeanY                                   
- timeDomainBodyAccelerometerJerkMeanZ                                   
- timeDomainBodyAccelerometerJerkStandardDeviationX                      
- timeDomainBodyAccelerometerJerkStandardDeviationY                      
- timeDomainBodyAccelerometerJerkStandardDeviationZ                      
- timeDomainBodyGyroscopeMeanX                                           
- timeDomainBodyGyroscopeMeanY                                           
- timeDomainBodyGyroscopeMeanZ                                           
- timeDomainBodyGyroscopeStandardDeviationX                              
- timeDomainBodyGyroscopeStandardDeviationY                              
- timeDomainBodyGyroscopeStandardDeviationZ                              
- timeDomainBodyGyroscopeJerkMeanX                                       
- timeDomainBodyGyroscopeJerkMeanY                                       
- timeDomainBodyGyroscopeJerkMeanZ                                       
- timeDomainBodyGyroscopeJerkStandardDeviationX                          
- timeDomainBodyGyroscopeJerkStandardDeviationY                          
- timeDomainBodyGyroscopeJerkStandardDeviationZ                          
- timeDomainBodyAccelerometerMagnitudeMean                               
- timeDomainBodyAccelerometerMagnitudeStandardDeviation                  
- timeDomainGravityAccelerometerMagnitudeMean                            
- timeDomainGravityAccelerometerMagnitudeStandardDeviation               
- timeDomainBodyAccelerometerJerkMagnitudeMean                           
- timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation              
- timeDomainBodyGyroscopeMagnitudeMean                                   
- timeDomainBodyGyroscopeMagnitudeStandardDeviation                      
- timeDomainBodyGyroscopeJerkMagnitudeMean                               
- timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation                  
- FrequencyuencyDomainBodyAccelerometerMeanX                             
- FrequencyuencyDomainBodyAccelerometerMeanY                             
- FrequencyuencyDomainBodyAccelerometerMeanZ                             
- FrequencyuencyDomainBodyAccelerometerStandardDeviationX                
- FrequencyuencyDomainBodyAccelerometerStandardDeviationY                
- FrequencyuencyDomainBodyAccelerometerStandardDeviationZ                
- FrequencyuencyDomainBodyAccelerometerMeanFrequencyX                    
- FrequencyuencyDomainBodyAccelerometerMeanFrequencyY                    
- FrequencyuencyDomainBodyAccelerometerMeanFrequencyZ                    
- FrequencyuencyDomainBodyAccelerometerJerkMeanX                         
- FrequencyuencyDomainBodyAccelerometerJerkMeanY                         
- FrequencyuencyDomainBodyAccelerometerJerkMeanZ                         
- FrequencyuencyDomainBodyAccelerometerJerkStandardDeviationX            
- FrequencyuencyDomainBodyAccelerometerJerkStandardDeviationY            
- FrequencyuencyDomainBodyAccelerometerJerkStandardDeviationZ            
- FrequencyuencyDomainBodyAccelerometerJerkMeanFrequencyX                
- FrequencyuencyDomainBodyAccelerometerJerkMeanFrequencyY                
- FrequencyuencyDomainBodyAccelerometerJerkMeanFrequencyZ                
- FrequencyuencyDomainBodyGyroscopeMeanX                                 
- FrequencyuencyDomainBodyGyroscopeMeanY                                 
- FrequencyuencyDomainBodyGyroscopeMeanZ                                 
- FrequencyuencyDomainBodyGyroscopeStandardDeviationX                    
- FrequencyuencyDomainBodyGyroscopeStandardDeviationY                    
- FrequencyuencyDomainBodyGyroscopeStandardDeviationZ                    
- FrequencyuencyDomainBodyGyroscopeMeanFrequencyX                        
- FrequencyuencyDomainBodyGyroscopeMeanFrequencyY                        
- FrequencyuencyDomainBodyGyroscopeMeanFrequencyZ                        
- FrequencyuencyDomainBodyAccelerometerMagnitudeMean                     
- FrequencyuencyDomainBodyAccelerometerMagnitudeStandardDeviation        
- FrequencyuencyDomainBodyAccelerometerMagnitudeMeanFrequency            
- FrequencyuencyDomainBodyBodyAccelerometerJerkMagnitudeMean             
- FrequencyuencyDomainBodyBodyAccelerometerJerkMagnitudeStandardDeviation
- FrequencyuencyDomainBodyBodyAccelerometerJerkMagnitudeMeanFrequency    
- FrequencyuencyDomainBodyBodyGyroscopeMagnitudeMean                     
- FrequencyuencyDomainBodyBodyGyroscopeMagnitudeStandardDeviation        
- FrequencyuencyDomainBodyBodyGyroscopeMagnitudeMeanFrequency            
- FrequencyuencyDomainBodyBodyGyroscopeJerkMagnitudeMean                 
- FrequencyuencyDomainBodyBodyGyroscopeJerkMagnitudeStandardDeviation    
- FrequencyuencyDomainBodyBodyGyroscopeJerkMagnitudeMeanFrequency


## Transformations
The variables are cleaned using below principles

- All special characters are removed first( '(', ')', '-')
- mean is replaced with Mean
- std is replaced with StandardDeviation
- Acc has been expanded to Accelerometer
- Freq has been expanded to Frequency
- Mag has been expanded to Magnitude
- Variables starting with letter 'f' has been expanded to frequencyDomain
- Variables starting with letter 't' has been expanded to timeDomain
