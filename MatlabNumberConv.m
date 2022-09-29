function [outputArg] = MatlabNumberConv(inputArg)
%function to convert the number equivalent of the alphabet back into
%numbers
lengthAlphabet = 26; 

letterArray = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
numberArray = zeros(1,lengthAlphabet); 

for i = 1:lengthAlphabet

    numberArray(i) = i + 96; 

end 

for i = 1:lengthAlphabet 

    if (inputArg == numberArray(i))

        outputArg = letterArray(i);

    end
end
end