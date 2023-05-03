%% Definición de los canales
% Canal: Calories donde se almacenan los datos de calorias de los platos 
% En los siguientes 2 campos: 
     % Field1 = name (define el nombre del plato)
     % Field2 = kcal
     % Field3 = numScans (numero de escaneos clasificados de ese plato)

%% Definición de las claves de acceso

ChannelIDSensores1 = 1959040;
readAPIKeySensores1 = '8687CL6RSM2FLU1V';
writeAPIKeySensores1 = 'G816C41BSJHVJNGS';

%% Carga de datos
  thingSpeakWrite(ChannelIDSensores1,'Fields',[1,2,3],'Values',{'churros',360,0},'WriteKey',writeAPIKeySensores1)
  pause(15)
  thingSpeakWrite(ChannelIDSensores1,'Fields',[1,2,3],'Values',{'ensalada-cesar',44,0},'WriteKey',writeAPIKeySensores1)
  pause(15)
  thingSpeakWrite(ChannelIDSensores1,'Fields',[1,2,3],'Values',{'entrecot',222,0},'WriteKey',writeAPIKeySensores1)
  pause(15)
  thingSpeakWrite(ChannelIDSensores1,'Fields',[1,2,3],'Values',{'espaguetis_bolonesa',123,0},'WriteKey',writeAPIKeySensores1)
  pause(15)
  thingSpeakWrite(ChannelIDSensores1,'Fields',[1,2,3],'Values',{'flan',133,0},'WriteKey',writeAPIKeySensores1)
  pause(15)
  thingSpeakWrite(ChannelIDSensores1,'Fields',[1,2,3],'Values',{'helado',213,0},'WriteKey',writeAPIKeySensores1)
  pause(15)
  thingSpeakWrite(ChannelIDSensores1,'Fields',[1,2,3],'Values',{'huevos_revueltos',229,0},'WriteKey',writeAPIKeySensores1)
  pause(15)
  thingSpeakWrite(ChannelIDSensores1,'Fields',[1,2,3],'Values',{'sushi',103,0},'WriteKey',writeAPIKeySensores1)
  pause(15)
  thingSpeakWrite(ChannelIDSensores1,'Fields',[1,2,3],'Values',{'tarta_chocolate',440,0},'WriteKey',writeAPIKeySensores1)
  pause(15)
 thingSpeakWrite(ChannelIDSensores1,'Fields',[1,2,3],'Values',{'tostada',249,0},'WriteKey',writeAPIKeySensores1)
 pause(15)

%% Lectura de los datos cargados
 data = thingSpeakRead(ChannelIDSensores1,'Fields',[1,2,3],'NumPoints',10,'OutputFormat','TimeTable','ReadKey',readAPIKeySensores1);
 disp(data);


