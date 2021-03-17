clear all;clc;

[file,path] = uigetfile('*.xls','Cargar datos de Excel de Momox'); %seleccionar y abrir el doc de excel que queremos usar en el programa
data_file = fullfile(path,file);%arma la ruta del archivo
raw_data = xlsread(data_file);% lee el archivo excel
x = raw_data(:,2); %la columna 1 es x
y = raw_data(:,3);%la columna 2 es y
z = raw_data( :,4);
t = raw_data( :,1);

%----OPERACIONES-------------------------------
%a2 = y;
%a1 = x;
%a3 = z;
%sumatoria = a1.^2 + a2.^2 + a3.^2;
%magnitud = sqrt(sumatoria);
%mag = magnitud - 9.81;
amp = 1.2*sin(acos(1-(1.82232/2*9.81)))
%fprintf('Amplitud = ',amp);

%-----GRAFICAS----------------------------------

%GRAFICA MAG-G
%subplot(2,3,1)
%plot(x); %color rojo en la grafica
%title('Aceleracion en X')
%xlabel('tiempo')

%GRAFICA AMPLITUD
%subplot(2,3,2)
%amplitud=[10.7411,9.4503,8.3915,4.4834,1.3315, 0.9559,1.1702,0.9721,0.9721,0.9721];
%time=[2.8319,3.8124,6.35373,11.7265,16.9293,22.2121,27.3349,39.2813,55.8404 ,66.4358];
%m = 124.16

%y = [log(0.9721)-log(10.7411)]; %Matriz correspondiente por medio de linealización para la incógnita y
%x = [-time/2*m];  %Matriz correspondiente por medio de linealización para la incógnita x
%b = x\y;
%disp (b)



b =  0.3104 +  0.5985 + 0.2118 + 0.5062 +  0.5865 +  0.5375 + 0.5825 + 0.5825 + 0.5825


%GRAFICA MAG-G
%subplot(2,3,3)
%plot(z); %color rojo en la grafica
%title('Aceleracion en Z')
%xlabel('tiempo')