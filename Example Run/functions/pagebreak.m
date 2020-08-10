function pagebreak()
    global rptt;
    global htmll;
 
    import mlreportgen.dom.*;   
    append(rptt,htmll);
    htmll = HTML();
 
    br = PageBreak();
    append(rptt, br);
end