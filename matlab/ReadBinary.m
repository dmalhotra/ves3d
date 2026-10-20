% Copyright (C) 2010-2017 The Ves3D authors (see NOTICE)
% Author: Abtin Rahimian

function out = ReadBinary(name, precision)

if ( nargin < 2 )
  precision = 'double';
end

fid = fopen(name,'r');
out = fread(fid,precision);
fclose(fid);
