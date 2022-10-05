%sorts the array in matlab and then performs a binary search algorithm to
%search for a specific number. This will then give back the position we
%want. Note if there are two numbers in the array which are the same, 
% it will only pick up one number 

unsortedArr = [1,0,9,4,33,56,18,4,2]; %unsorted array
searchedVal = 9; %value we want to search for in the array 

sortedArr = sort(unsortedArr); %sorts the array into chronological order so
%that binary search can be implemented

lengthArr = length(sortedArr); %tells us the length of the array
lowerBound = 1; %the initial lower bound before the search has been done
upperBound = lengthArr; %the initial upper bound before the search has been done

%create a boolean called valueFound, where if the search value is found, it
%will equal true, otherwise it will equal false
positionInArray = 0;

valueFound = false; 
while valueFound == false 

    midBound = (lowerBound + upperBound) /2;
    roundInitMidBound = round(midBound); %if float, need to convert to int
    midValue = sortedArr(roundInitMidBound); 

    if midValue == searchedVal %compares if the midValue from the array is 
        % the same as the value that we are searching for. If it is, then
        % we can exit the while loop as we've found the value we are
        % looking for
        x = 0; 
        positionInArray = roundInitMidBound; 
        valueFound = true;
    elseif midValue < searchedVal %shows that the midValue is below the 
        %searchedVal we are looking for. This means that the upper limit
        %can be reduced by half
        lowerBound = roundInitMidBound -1;
        x =1;
    elseif midValue > searchedVal %shows that the midValue is above the 
        %searchedVal we are looking. This means that we can get rid of the
        %lower limit
        upperBound = roundInitMidBound +1; 
        x =2; 
    else %default setting, so that if there is a bug, we will know as x =1 
        % and the while loop will be exited
        x =3; 
        valueFound = true;
    end    
end 

disp("The position in the sorted array for the value..."); 
disp(searchedVal); 
disp("is...");
disp(positionInArray); 
disp("If 0 is outputted, there is an error!");
