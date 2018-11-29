function [x, y] = read_file(filename)
    %{
    function reads the file and stores the data in x, y arrays
    
    @param filename :: input file, must be a string
    
    @return x :: 1st column of file
    @return y :: 2nd column of file
    %}

    file_id = fopen([filename '.txt']);
    
    if exist([filename '.txt'],'file');
        data = fscanf(file_id, '%f', [2 Inf]);
        
        x = data(1, :);
        y = data(2, :);
        
        fclose(file_id);
        
    else   
        fprint('The file %s could not be opened', filename);
    end   
end