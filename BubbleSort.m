%looking at and implementing bubble sort algorithm for a set of array data
%once completed might look at implementing the algorithm in C as it'll be
%more useful to have in there as there is the sort function in matlab 

arr = [99,34,23,3,7,1,4,2,8,3]; 


arrLength = length(arr); 

for i = 1:(arrLength-1)

    swapped = false; %boolean value

    for j = 1:(arrLength-1)

        if arr(j) > arr(j+1)

            %swap the values 
            swappedValue = arr(j); 
            arr(j) = arr(j+1); 
            arr(j+1) = swappedValue; 

            %declare that the boolean swapped is switched to true, to show
            %that there might be other values which are not sorted
            swapped = true; 

        end

    end

    if swapped == false 
        break;
    end 


end
