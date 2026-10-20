function [u v] = parDomain(p)
% PARDOMAIN - Returns the Gauss-Legendre--uniform grid on the unit sphere
% (0,pi)x(0,2pi).
%
% SEE ALSO: GRULE 
%

% Copyright (C) 2010-2017 The Ves3D authors (see NOTICE)
% Author: Abtin Rahimian
% From Abtin Rahimian's MATLAB toolkit Ves3DMat (2010), added to Ves3D in 2017.
  
lambda = (0:2*p-1)'*pi/p;
theta = acos(grule(p+1));
[v u] = meshgrid(lambda,theta);
u = u(:); v = v(:);