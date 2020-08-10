function paragraph( p)
    global rptt;
    global htmll;
    str = strcat("<p>", p , "</p>" );
    append(htmll, str);
end