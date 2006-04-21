function [m, beta] = ncnmNoiseSites(noise, g, nu, mu, varSigma, y)

% NCNMNOISESITES Site updates for null category model.

% NCNM

% The standard code.
beta = nu./(1-nu.*varSigma);
m = mu + g./nu;
