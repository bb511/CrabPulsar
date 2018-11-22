function [x1, y1, x2, y2] = readPlot(filename1, filename2, ...
                                     filename3, filename4)
% "readFile" function reads and plots the data for 
% 
% @param filename :: file name of input file
% 
% @returns :: [x, y] == [No. of harmonics, Period of Harmonic]

    filename1 = [filename1 '.txt'];
    filename2 = [filename2 '.txt'];
    filename3 = [filename3 '.txt'];
    filename4 = [filename4 '.txt'];

    % opens file for reading 
    M1_id = fopen(filename1,'r');          
    M2_id = fopen(filename2,'r');          
    M3_id = fopen(filename3,'r');          
    M4_id = fopen(filename4,'r');          

    if exist(filename1,'file')             
        x1 = fscanf(M1_id,'%f',[150 Inf]);
        y1 = fscanf(M2_id,'%f',[150 Inf]);
        y = y1.';
        x2 = fscanf(M3_id,'%f',[150 Inf]);
        y2 = fscanf(M4_id,'%f',[150 Inf]);       
        y2 = y2.';
        fclose(M1_id); 
        fclose(M2_id); 

        % Plots the data
        x1 = 1:length(y1);
        x2 = find(y2 == y1);
        figure();
        plot(x1, y1, 'rx');
        hold on
        plot(x2, y2, 'bo')
        xlabel('No. of Harmonics'); ylabel('Period')
    else                                       
        fprintf('The file could not be opened.\n'); 
    end 
end    