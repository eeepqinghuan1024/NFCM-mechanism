>>  fz=14;
y=[25.45 17.26;19.91 16.69;6.36 12.89;28.29 17.01;5.14 5.27;20.68 18.47;16.62 13.62;4.88 4.66]; 
b=bar(y);
grid on;
ch = get(b,'children');
set(gca,'XTickLabel',{'Case \oslash','Case W','Case C','Case G','Case W+C','Case W+G','Case C+G','Case W+C+G'});
set(gca,'XTickLabelRotation',40);
ylabel('The total costs J','FontName','Times New Roman','FontSize',fz);
>> 
