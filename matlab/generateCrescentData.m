function [X, y] = generateCrescentData(numDataPart);

% GENERATECRESCENTDATA Generate crescent data.

% NCNM

% Generate a toy data-set
R = [sqrt(2)/2 -sqrt(2)/2; sqrt(2)/2 sqrt(2)/2];
D = [2 0; 0 1];
meanOne = [4 4];
meanTwo = [0 4];
meanThree = -[4 4];
meanFour = -[0 4];

X1 = [randn(numDataPart,2)*D*R]  - repmat(meanOne, numDataPart, 1);
X2 = [randn(numDataPart,2)*D*R'] - repmat(meanTwo, numDataPart, 1);
X3 = [randn(numDataPart,2)*D*R]  - repmat(meanThree, numDataPart, 1);
X4 = [randn(numDataPart,2)*D*R'] - repmat(meanFour, numDataPart, 1);

X = [X1; X2; X3; X4];
y = [ones(2*numDataPart, 1); -ones(2*numDataPart, 1)];
