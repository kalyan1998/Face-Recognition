function [features, featureMetrics, varargout] = exampleBagOfFeaturesExtractor(I)
[height,width,numChannels] = size(I);
if numChannels > 1
    grayImage = rgb2gray(I);
else
    grayImage = I;
end

gridStep = 8; % in pixels
gridX = 1:gridStep:width;
gridY = 1:gridStep:height;

[x,y] = meshgrid(gridX, gridY);

gridLocations = [x(:) y(:)];

multiscaleGridPoints = [SURFPoints(gridLocations, 'Scale', 1.6); 
                        SURFPoints(gridLocations, 'Scale', 3.2);
                        SURFPoints(gridLocations, 'Scale', 4.8)
                        SURFPoints(gridLocations, 'Scale', 6.4);];
                    
multiscaleSURFPoints = detectMSERFeatures(grayImage);
                    
features = extractFeatures(grayImage, multiscaleGridPoints,'Upright',true);

featureMetrics = var(features,[],2);

if nargout > 2
    % Return feature location information
    varargout{1} = multiscaleGridPoints.Location;
end


