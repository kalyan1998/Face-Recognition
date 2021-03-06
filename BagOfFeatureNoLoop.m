%Data = imageDatastore('Copy_3_of_Dataset_','IncludeSubfolders',true,'LabelSource','foldernames');
opts = templateSVM('KernelFunction','polynomial');
Data = imageDatastore('Copy_4_of_Dataset_','IncludeSubfolders',true,'LabelSource','foldernames');
[X,Xnew]=splitEachLabel(Data,0.4);
bag = bagOfFeatures(X,'StrongestFeatures',1,"VocabularySize",638,'GridStep',[1 1],'UseParallel',true);
categoryClassifier = trainImageCategoryClassifier(X,bag,'LearnerOptions',opts,'UseParallel',true);
confMatrix = evaluate(categoryClassifier,Xnew);
t = mean(diag(confMatrix));
