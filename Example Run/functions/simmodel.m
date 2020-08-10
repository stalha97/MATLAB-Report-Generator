function pmodel(model)
    heading("Simulink Model:");

    load_system(model);
    
    mkdir("images");
    name = strcat("images/", model, "-SimModel.png")
    print('-s','-dpng', name);

    img(name);

end

