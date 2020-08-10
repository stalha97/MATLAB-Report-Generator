function file = code(filename)
    close all
    global rptt;
    global htmll;
    
    heading("Code:");
    
    filename = strcat(filename , ".m");
    file = fopen(filename);
    
    p="";
    while ~feof(file)
        line = fgetl(file);
        p = strcat( p , line , "<br/>" );
    end
    
    str = strcat("<p style='background-color:#F5F5F5;font-family:Times New Romans;'>", p , "</p>" );
    append(htmll, str);
    
    fclose(file);
    
end