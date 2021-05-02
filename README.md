# CAL500
multilabel classification

We (me and Elad Avizohar) use the NILM model, from the paper :
Wu, X., Gao, Y., & Jiao, D. (2019). Multi-label classification based on random forest algorithm for non-intrusive load monitoring system. Processes, 7(6), 337.‏

This model is Non-intrusive load monitoring and is about spreading energy or identify load.
which all of them used with one method called: transformation method.
The sub-method we use are: classifier chain method, label power-set method.
The algorithems we used are: Random Forest,SVM, Naive Base (NB).
The evaluation method is: F-score & Accuracy.

Attributes of the data set:
 
labels numeric nominal Instances domain name
174      68      0     502  music  CAL500


training=60%
test=40%

We built a classification model from type binary relevance. The model advantages: linar complexity, acapablility to take any linear method of type base learner and the model make
the loss function efficient
