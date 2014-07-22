clc; clear all;
m =  'C:\Users\a0066428\Dropbox\Research on atmosphere\Data\Data for Ivan\OPS\0221.xls';
fid = fopen([m]);
formatSpec = '%d %s %s %f %f %f %s %s %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
C = textscan(fid,formatSpec,'HeaderLines',15,'Delimiter',',');
fclose(fid);


clc; clear all;
m =  'C:\Users\a0066428\Dropbox\Research on atmosphere\Data\Data for Ivan\OPS\0221.xls';
fid = fopen([m]);
formatSpec = '%d %s %s %f %f %f %s %s %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f';
C = textscan(fid,formatSpec,'HeaderLines',15,'Delimiter',',');
fclose(fid);