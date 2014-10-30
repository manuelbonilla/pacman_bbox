function res_cell = import_bbox_results( filename )

delimiter = ' ';


formatSpec = '%f%f%f%f%f%f%[^\n\r]';


fileID = fopen(filename,'r');

dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'MultipleDelimsAsOne', true, 'EmptyValue' ,NaN, 'ReturnOnError', false);

fclose(fileID);

res = [dataArray{1:end-1}];

k =1;
for i =1:size(res,1)/5
    k = (i-1)*5+1;
    res_cell{i}.T = res(k:k+3,1:4);
    res_cell{i}.X = res(k+4,1:3);
    res_cell{i}.Y = res(k+4,4:6);
   
end


clearvars filename delimiter formatSpec fileID dataArray ans

end