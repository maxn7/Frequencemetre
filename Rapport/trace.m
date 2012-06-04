close all;
clear all;

f=1:100:20000;
ech=50*10^6.*(1./f);
hold on
plot(f,f,'color','blue')
plot(f,ech,'color','red')

xlabel('f (Hz)')
ylabel('Precision')
legend('Etalon','Echantillonnage')
axis([1000 20000 1 20000])
grid on
hold off


A= importdata('mesure_erreur.txt',' ',1);
x=A.data(:,1); %1 iere col
erreur=A.data(:,2);
pourc=((x-erreur)./x)*100;
lissage=smooth(pourc,.2);
figure
semilogx(x,pourc,'o','color','red')
hold on
xlabel('f (Hz)')
ylabel('Erreur (%)')
legend('Erreur')
hold off