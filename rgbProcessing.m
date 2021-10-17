%Data = imageDatastore('Dataset_','IncludeSubfolders',true,'LabelSource','foldernames');
Data1 = imageDatastore('Copy_of_Dataset_','IncludeSubfolders',true,'LabelSource','foldernames');
%Copy_Data = imageDatastore('Copy_3_of_Dataset_','IncludeSubfolders',true,'LabelSource','foldernames');
Copy_Data1 = imageDatastore('Copy_4_of_Dataset_','IncludeSubfolders',true,'LabelSource','foldernames');
data={Data1};
Copy={Copy_Data1};
l={};
k=1;
for i=1:numel(data)
    m = data{i}.Files;
    n= Copy{i}.Files;
    for j=1:numel(m)
         I = imread(m{j});
%         %imwrite(I,n{j});
%            MouthDetect = vision.CascadeObjectDetector('Mouth','MergeThreshold',128);
%      BB=step(MouthDetect,I);
%      if(numel(BB)~=0)
%          [mouth,rect1]=imcrop(I,BB(1,:));
%          Iblur1 = imgaussfilt(I(rect1(2):rect1(2)+rect1(4),rect1(1):rect1(1)+rect1(3),:),100);
%          I(rect1(2):rect1(2)+rect1(4),rect1(1):rect1(1)+rect1(3),:)=Iblur1;
%          imwrite(rgb2gray(I),n{j});
%      else
%          l{k}=n{j};
%          k=k+1;
%          imwrite(rgb2gray(I),n{j});
%          disp("mouth not detected"+" "+n{j});
%      end
       imwrite(rgb2gray(I),n{j});
    end
end