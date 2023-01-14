% This function creats a distribution of the median of number of resistance mutations obtained after several fluctuation assays 

function median_arr_DmutS = FlucAssayMedianDistr(num_of_repetitions)

    for i=1:num_of_repetitions
        
        median_arr_DmutS(i) = median(FlucAssay(100));
            
    end
    
    save("median_arr_DmutS", "median_arr_DmutS")
    
    end