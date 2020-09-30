abserr = zeros(size(fxpout,1),1);
for i=1:size(fxpout)
    abserr(i) = abs(expectedresults(i)-fxpout(i));
end
clk = 1:size(fxpout);
plot(clk,abserr)
grid on
set(gca,'FontSize',15)
xlabel("Clock Cycle")
ylabel("Absolute Error")