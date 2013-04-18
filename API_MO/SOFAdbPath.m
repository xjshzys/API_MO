function [dbPath,f]=SOFAdbPath
% [dbPath,f]=SOFAdbPath 
%
%   [dbPath,f]=SOFAdbPath returns the path to the directory containing
%   HRTFs for demos and applications. It also returns the system-specific 
%		file separator for creating file names. 

% SOFA API - function SOFAstart
% Copyright (C) 2012-2013 Acoustics Research Institute - Austrian Academy of Sciences
% Licensed under the EUPL, Version 1.1 or � as soon they will be approved by the European Commission - subsequent versions of the EUPL (the "Licence")
% You may not use this work except in compliance with the Licence.
% You may obtain a copy of the Licence at: http://joinup.ec.europa.eu/software/page/eupl
% Unless required by applicable law or agreed to in writing, software distributed under the Licence is distributed on an "AS IS" basis, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
% See the Licence for the specific language governing  permissions and limitations under the Licence.

%% ---------------------------- Adding Path's -----------------------------
% Get the basepath as the directory this function resides in.
% The 'which' solution below is more portable than 'mfilename'
% becase old versions of Matlab does not have "mfilename('fullpath')"
basepath=which('SOFAstart');
% Kill the function name from the path.
basepath=basepath(1:end-12);
f=filesep;
dbPath=[basepath f '..' f 'HRTFs'];