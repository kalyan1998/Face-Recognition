Data = imageDatastore('Copy_4_of_Dataset_','IncludeSubfolders',true,'LabelSource','foldernames');
l={};
k=1;
for n=1:numel(Data.Files)
    I = imread(Data.Files{n});
    I1=imresize(I,[200 200]);
%     NoseDetect = vision.CascadeObjectDetector('Nose','MergeThreshold',64);
%     BB=step(NoseDetect,I1);
%     if(numel(BB)~=0)
%        [nose,rect]=imcrop(I1,BB(1,:));
%        Iblur = imgaussfilt(I1(rect(2):rect(2)+rect(4),rect(1):rect(1)+rect(3),:),100);
%        I1(rect(2):rect(2)+rect(4),rect(1):rect(1)+rect(3),:)=Iblur;
%        imwrite(I1,Data.Files{n});
%    else
%        l{k}=Data.Files{n};
%        k=k+1;
%        imwrite(I1,Data.Files{n});
%        disp("nose not detected"+" "+Data.Files{n});
%     end
    imwrite(I1,Data.Files{n});
end