close all
figure;
hold on

for i = 1:1000
    t  = rand(1,2);
    R = sqrt(t(1).^2 + t(2).^2) + eps;
    Z = sin(R)/R;
    data(i,:) = [t Z];
end

%subplot(2,2,1);



% Principal Component Analysis (PCA) for data visualisation, from a geometric point of view
% 
% In this post I’ll be showing how to use Principal Component Analysis (PCA) to perform linear data reduction for the purpose of data visualisation.
% 
% There is a fair bit of material on this subject on the web, some are quite mathematically involved. I want to try something different and explain PCA from a geometric point of view, rather than from a purely numerical point of view. I’m hoping this will make it easier to understand.
% Our problem
% 
% Say we have a 3D dataset as shown below.
% 
% I picked a noisy 3D plane, made up of 1000 random points, with the centre highlighted in green for visual aid (you will see why later on). The plane is on a slant of 45 degrees relative to both the x1 and x2 axis. I labelled the graph using x1, x2, x3 to keep it general. I could have used X, Y, Z but that might imply something specific about the data.
% 
% Okay, say now for some reason you want to ‘squash’ the 3D data into 2D for visualisation purposes. But you want the squashing process to capture as much of the spread/variance of the data as much possible. This is essentially a data reduction problem, but with some extra constraints, namely maximising the variance.
% From 3D to 2D without PCA
% 
% One way of projecting our data from 3D to 2D, without using PCA, would be to simply pick any 2 combination of the 3 dimensions and plot that. Let’s try that. I’ll pick x1 vs x2.
% 
% As you can see it’s not a bad projection. You can see the red and green crosses quite well, with a reasonable amount of spread in all axis. Everything is skewed though. The other combinations, x1 vs x3, x2 vs x3, produce similar graphs (because of the 45 degree rotation), so I won’t bother plotting them.  So can we do better? Intuitively, the best projection is when we are looking directly/perpendicular to the plane, as shown below.
% 
% PCA to the rescue
% 
% Looking back at the previous graph, we want the 3D plane to lie nicely onto 2D space, but how do we do it? One intuitive way you can think of doing this is to somehow rotate the plane so that it aligns to one of the 3 possible axis combinations. For example, if we could somehow rotate the plane so that it lies perfectly flat along the x1,x2 axis and ignore x3, then we got a pretty ideal projection.
% 
% PCA is a process involving a bunch of steps that will do more or less exactly what I described above. By rotating the data it puts it on a brand new set of axis, that I’ll call pc1, pc2 … pcN, to avoid any confusion. In general, it essentially rotates the data (via an N dimensional rotation matrix) in such a way as to maximise the spread/variance along the new axis pc1, pc2 … pcN, sorted from largest to smallest.
% 
% The steps to perform PCA for the purpose of visualisation are
% 
%     Translate the data so that the centre is at the origin
%     Calculate the covariance matrix
%     Find the principal components
%     Reduce the data using the selected principal components
% 
% These steps are different if you are interested in data compression. I won’t discuss about data compression in this post. Let’s go through the visualisation steps.
% 1. Translating the data
% 
% This step is straight forward. Find the average/mean of the 3D data and subtract it from all the data. In Octave this is

% data is a Nx3 matrix
m = mean(data);
plot3(data(:,1), data(:,2), data(:,3),'b*')
%subplot(2,2,1); 
hold on;

data_m = data - repmat(m, length(data), 1);
m_m = mean(data_m);
%subplot(2,2,1); 
plot3(data_m(:,1), data_m(:,2), data_m(:,3),'g*')
%subplot(2,2,2); 
%plot3(data_m(:,1), data_m(:,2), data_m(:,3), 'b*');
%subplot(2,2,2); 

% The reason we have to translate the data is because we want to rotate relative to the centre of the data.
% 2. Calculate the covariance matrix
% 
% The covariance matrix, using data_m previously is,

N = size(data, 1);
covar = data_m'*data_m/N;

% This produces a 3×3 matrix that is symmetric.
% 3. Finding the rotation
% 
% We can find the optimal rotation using Singular Value Decomposition (SVD). I won’t discuss what this function does, since it’s a whole topic on its own. For now we’re just interested in the result it produces. The SVD is called by

[U,S,V] = svd(covar)

% The matrix U and V are both the same. I’ll pick V. V is the 3×3 rotation matrix we are interested in.
% 
% S is the singular value matrix and it contains useful information regarding the principal components of V (column vectors). For example


% If we normalise the diagonals, we get

diag(S) / sum(diag(S))

% These values can be interpreted as the percentage of how much variance each principal component captures, noticed they’re sorted from largest to smallest. Because we are interested in the first 2 components, this captures about 0.5297516 +  0.4653522 = ~ 0.995, or 99.5% of our data. We expect this to be high for the example dataset because we know for a fact that a plane in 3D can be always be projected onto 2D with very little loss of information.
% 4. Data reduction using principal components
% 
% Now that we have our rotation matrix V, we can conceptually rotate the data, align them to some new axis, and just keep the first 2 dimensions, like so

data_r = data_m*V; % rotated data

%%%%%%%%%%The  Bounding box should be performed in data_r
%subplot(2,2,1); 
plot3(data_r(:,1), data_r(:,2), data_r(:,3), 'm*');

T = [V m.'; zeros(1,3) 1];
data_recover = (T*([data_r ones(size(data_r,1),1)].')).';
%subplot(2,2,1); 
plot3(data_recover(:,1), data_recover(:,2), data_recover(:,3), 'ro');

data_recover2 = (inv(T)*([data ones(size(data_r,1),1)].')).';
%subplot(2,2,1); 
plot3(data_recover2(:,1), data_recover2(:,2), data_recover2(:,3), 'ko');

legend('Original Data','Translated Data','Translated and rotated data', 'Recovered data', 'Recovered data pca frame')

plot3(m(1), m(2), m(3), 'r*')
plot3(m_m(1), m_m(2), m_m(3), 'r*')




%reduced_data = data_r(:, 1:2); % keep first 2 components

%But it’s more common to do this, since it’s more efficient code

%reduced_data = data_m*V;

% as there are less matrix operations involved.
% Visualisation
% 
% reduced_data is now a Mx2 matrix, which we can plot in 2D. Alright, lets see what it looks like.
% 
% As you can see, the plane now looks like a proper square and the centre circle looks like a circle. Interestingly, it rotated the plane by some amount. Remember earlier I said PCA finds the maximum variance for each principal component. It turns out rotating a square so that the diagonal align an axis meets this requirement. Intuitively, a square has a bigger bounding box if it’s rotated, and hence slightly larger variance along each axis, if we assume the square is uniformly sampled. This is illustrated below.
% Summary
% 
% There you have it folks. A geometric based explanation on using PCA for data visualisation. A summary of the Octave commands are

% N = size(data, 1);
% m = mean(data); % each row is a data sample
% data_m = data - repmat(m, N, 1);
% covar = data_m'*data_m/N; % or N-1 for unbiased estimate
% [U,S,V] = svd(covar);
% reduced_data = data_m*V(:,1:2); % reduce to 2 components

% You can also use the cov() function to calculate the covariance instead of doing it step by step.
% 
% Everything I have explained is applicable to higher dimensions. That’s all there is to it!
