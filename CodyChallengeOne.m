function [out] = CodyChallengeOne(inputString)
%project cody 2139 
%https://uk.mathworks.com/matlabcentral/cody/groups/28/problems/2139

%Obtain the most frequent character from a word 


userInput = inputString; %var called user input
charUserInput = char(userInput);
lengthWord = strlength(userInput); %find the length of the string. Note 
%spaces in the word are also considered as a character, e.g. "hello world"
%will input 11, whereas "helloworld" will print out 10

wordArray = zeros(1,lengthWord); %establish an empty array of 0's which is
%going to be overridden with values from the word 

%next step is to fill the 0's with the character of the words

for wordCharacter = 1:lengthWord

    wordArray(wordCharacter) = charUserInput(wordCharacter);
    %in code, this has worked a bit different. Instead of having the
    %characters of the word, the wordArray has transported them into their
    %numerical equivalent. For "hellothere", the output "104 101 108 108
    %111 116 104 101 114 101", where each individual letter is given a
    %numerical equivalent such as with l being 108 and e being 101. 
    %This can work to our advantage where I can compare the values in the
    %wordArray numbers, see which one is the most frequent then print out
    %the actual character value to the user

    %for the numerical character, a = 97, z = 122 and it increases up by 1
    %for each letter. E.g., b = 98, c = 99, d = 100 etc 
    %have a dictionary with each letter to convert back with all the values
end

zeroArray = zeros(1, lengthWord); 
repeatDictionary = containers.Map(wordArray, zeroArray); 

for i = 1:lengthWord 
    disp("wordarray i is");
    a = wordArray(i); 
    disp(a); 
    
    for j = (i+1):lengthWord 
        disp("wordarray jk is");
        b = wordArray(j); 
        disp(b);

        if a == b
            repeatDictionary(a) = repeatDictionary(a) + 1;
        end
        %break; %can uncomment if there's only one repeated letter
    end
end

%disp(repeatDictionary(98)); %needs to be debugged - it's repeating the results
% of the ones that have already been counted. need to find a way to show 
% that if it has already been taken into account, it is ignored

key = keys(repeatDictionary); 
value = values(repeatDictionary); 

%MatlabNumberConv converts the number variable back to characters of the
%alphabet


maxValue = 0; 
for i = 1:length(value)

    for j = 1:length(key)

   

    end 

end 


out = disp(maxValue); 
%out = MatlabNumberConv(98); 


%disp(value(1));
