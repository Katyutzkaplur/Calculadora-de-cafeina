clear;clc

fprintf('Bienvenidx a la calculadora de extracción de cafeína. Las unidades manejadas son en mg y ml para hacer más eficientes los cálculos')

NE=input('\n¿Cuántas extracciones harás?\n'); %Numero de extracciones

NE=input('¿Cúantas extracciones harás?\n'); %Numero de extracciones
PM=input('¿Cuál es tu peso muestra en mg?\n'); %Peso muestra
CD=input('¿Cuál es el coeficiente de distribución?\n'); %Coeficiente de distribución
D=input('¿Cuántos ml de disolvente usarás?\n');%Disolvente
A=input('¿Cuántos ml de agua usarás?\n'); %Agua

CR=PM*A/(CD*D+A);
CFO=PM-CR;

fprintf('La cafeína remanente en la fase acuosa es de: %.2f mg \n',CR)
fprintf('La cafeína en la fase orgánica es de: %.2f mg \n',CFO)

for x=1:NE
CR=CR*A/(CD*D+A);
CFO=PM-CR;
fprintf('Extracción # %i \n',x)
fprintf('La cafeína remanente en la fase acuosa es de: %.2f mg \n',CR)
fprintf('La cafeína en la fase orgánica es de: %.2f mg \n',CFO)
CFOg(x)=CFO;
CRg(x)=CR;
end

R=(CFO/PM)*100;
fprintf('El porcentaje de rendimiento es: %.2f \n',R)

plot(CFOg,CRg)
title('Extracción de cafeína')
xlabel('Cafeína en fase orgánica (mg)')
ylabel('Cafeína en fase acuosa (mg)')
