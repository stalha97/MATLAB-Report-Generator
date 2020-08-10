function simscope( model )
    heading("Simulink Output:");
    close all
    global rptt;
    global htmll;
    
    global scopecount;
    scopecount = scopecount+1;
    close_system
    
    str = strcat( model, ".slx");
    open_system(str , "loadonly")
    
    str = strcat( model, "/", "Scope" );
    open_system(str)
    
    
    str = strcat( model, "/");
    set_param( str , "SimulationCommand" , "start")
    
    pause on
    pause(3)
    
    handle = findall(0,'type', 'figure')
    handle
    
    mkdir("images");
    [r c] = size(handle)
    for i=1:r
        str = strcat("images/",model,"-SimScope", num2str(scopecount) , ".png" );
        saveas( handle(i,1) , str );
        img(str);
    end
    
    
    figHandles = findall(0,'type', 'figure')
    delete(figHandles)
    
    close all
    close_system
end