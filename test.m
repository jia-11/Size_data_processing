clear all;
clc;
%file = dir('C:\working\output\2011\67\Oct\30\*');
filename = 'C:\Users\a0066428\Dropbox\Research on atmosphere\OCEC\OCEC.xlsx';
%path = inputdlg('What is the path of your file'); % test input prompt window
%filename = 'TGA.xlsx';
xlRange = 'A1:AO93';
sheet = 'Plotpm25_2';
[M,TXT,RAW] = xlsread(filename, sheet, xlRange);
xlRange2 = 'E1:AO1';
[M2,TXT2,RAW2] = xlsread(filename, sheet, xlRange2);
[m,n] = size(M);
n =6;
A = [1 13 14];
for i = 1:3
	if i ==1,
		x = M(:,1);
		y = M(:,2);
		subplot(n/2,1,i);
		plot(x,y,'ks-','MarkerSize',6);
		ylabel(TXT2(A(i)));
		hold on
	else
		x = M(:,1);
		y = M(:,2*A(i)-1);
		subplot(n/2,1,i);
		plot(x,y,'ks-','MarkerSize',6);
		ylabel(TXT2(A(i)*2-2));
		hold on
	end
end
set(gcf,'unit','normalized','position',[0.0,0.0,1,0.8]); %http://www.mathworks.com/help/matlab/creating_plots/positioning-figures.html
gtext('Julian Day','FontSize',12);
saveas(gcf,'xx.emf');
%plot(M(:,1),M(:,6),'--',M(:,1),M(:,8),'-');
%axis([0 300 0 100]);
%xlabel('Temperature (^{o}C)');
%ylabel('Weight loss (%)');
%l1 = 'Sodium oxalate (11.9 mg) + Potassium oxalate (17 mg) + Calcium oxalate (10.6 mg)';
%l2 = 'Predicted based on single compounds';
%legend(l1,l2);