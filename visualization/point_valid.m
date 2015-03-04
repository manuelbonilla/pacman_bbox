%function [ output_args ] = red_green( input_args )

load('sim_info2.mat')



for i=1:size(variations_fc_2d,1)

%     plot(rangelinear,rangeang)
%     hold on
    
   if(~isempty( find(index_green==i)))
       
       plot(points(i,1), points(i,2), 'g*')
       hold on
           
   else
       % plot(rangelinear,rangeang, 'r*')
            plot(points(i,1), points(i,2), 'r*')
        hold on
     
   end    

end









%end

