function img(path) 
    global rptt;
    global htmll;
    
    %%path
    maxwidth = 600;
    temp = imread(path);
    [x,y,k] = size(temp);
    
    if( y>maxwidth)
        temp = imresize( temp , maxwidth / y );
        %%str = strcat("Resized-",path);
        str = path;
    else
        str = path;
    end
    imwrite(temp, str);
    
    str = strcat("<p> <img src='", str , "' />" , "</p>" );
    append(htmll, str);
end