%import the data as string arrays before running this. 
x = 0;
for i=1:100000
    if(expectedresults(i) ~= fparesults(i))
        fprintf('Error at %d \n',i)
        x = x+1;
    end
end
fprintf('%d total errors\n',x)