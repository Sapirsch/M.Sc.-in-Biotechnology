% This function creats a distribution of the mean of number of resistance mutations obtained after several fluctuation assays 

function median_arr_DmutS = FlucAssayMedianDistr(num_of_repetitions)

    for i=1:num_of_repetitions
        
        median_arr_DmutS(i) = median(FlucAssay(100));
            
    end
    
    save("median_arr_DmutS", "median_arr_DmutS")
    
    end
function mean_arr_Dmuts = FlucAssayMeanDistr(num_of_repetitions)

for i=1:num_of_repetitions
    
    mean_arr_DmutS(i) = mean(FlucAssay(100));
        
end

save("mean_arr_DmutS", "mean_arr_DmutS")

end