function [ score ] = cosine(feature1,feature2)
%COMPUTE_COSINE_SCORE Summary of this function goes here
%   Detailed explanation goes here
        score  = feature1' * feature2/norm(feature1)/norm(feature2);

end
