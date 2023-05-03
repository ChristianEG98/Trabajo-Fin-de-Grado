    
    %% captura de la imagen modo: manual o innmediato
    img = snapshot(camara,'manual');
    
    % redimensionar la imagen al tama�o requerido por AlexNet
    imagenAlex = imresize(img,[227,227]);
    
    % redimensionar la imagen al tama�o requerido por GoogleNet
    imagenGoogle = imresize(img,[224,224]);

    % Clasificaci�n de la imagen capturada
    etiquetaAlex = classify(RedAlex,imagenAlex)
    etiquetaGoogle = classify(RedGoogle,imagenGoogle)
    
    % Visualizaci�n de la imagen
    image(imagenAlex); title(char(etiquetaAlex));
    
    image(imagenGoogle); title(char(etiquetaGoogle))

    ChannelIDSensores1 = 1959040;
    readAPIKeySensores1 = '8687CL6RSM2FLU1V';
    writeAPIKeySensores1 = 'G816C41BSJHVJNGS';

  p = char(etiquetaGoogle);
  %% Lectura de los datos cargados
    data = thingSpeakRead(ChannelIDSensores1,'Fields',[1,2,3],'NumPoints',10,'OutputFormat','TimeTable','ReadKey',readAPIKeySensores1);
    % conversi�n de los datos en la tabla a tabla
    TablaDatos = timetable2table(data);
    is_match = strcmp(TablaDatos{:,2}, p);
    output_array = TablaDatos{is_match,3:end};
    kcal = output_array(end,1);
    numScans = output_array(end,2);
    thingSpeakWrite(ChannelIDSensores1,'Fields',[1,2,3],'Values',{p,kcal,numScans + 1},'WriteKey',writeAPIKeySensores1);
    pause(2); pause(2); pause(2); pause(2); pause(2);