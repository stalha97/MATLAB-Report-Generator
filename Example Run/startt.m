function [rpt,html] = startt( DocName )

    folder = "functions"
    addpath(genpath(folder));
    clc
    close all
    
    import mlreportgen.dom.*;    
    
    global rptt;
    global htmll;
    
    mkdir("Matlab Reports Here");
    DocName = strcat("Matlab Reports Here/", DocName," ", datestr(datetime('now','TimeZone','local','Format','d-MMM-y HH-mm-ss'),'dd-mm-yy hh-MM-ss PM') );
    rptt = Document(DocName, 'docx');
    s = rptt.CurrentPageLayout;
    %s.PageSize.Orientation  ='portrait';
    s.PageSize.Height = '11.69in';
    s.PageSize.Width = '8.27in';
    
    
    
    str = strcat("<head> <title>", DocName , "</title> <style>*{font-family:Times New Roman}</style> </head>" );
    htmll = HTML(str);
    
    global codecount;
    codecount=0;
    global scopecount;
    scopecount=0;
    
    figHandles = findall(0,'type', 'figure')
    delete(figHandles)
end