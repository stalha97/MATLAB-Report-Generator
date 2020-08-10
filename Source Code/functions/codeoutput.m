function file = code(filename)
    close all
    global rptt;
    global htmll;
    
    global codecount;
    codecount=codecount+1;
    mkdir("images");
    
    heading("Output:");
    run(filename)
    
    figHandles = findall(0,'type', 'figure')
    
    [rows cols] = size(figHandles);
    for i = 1:rows
       str = strcat("images/Code",num2str(codecount),"-fig", num2str(i) , ".png" );
       saveas( figHandles(i,1) , str);
       img(str);
    end
    
    close all
    
end