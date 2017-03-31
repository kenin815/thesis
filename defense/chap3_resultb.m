n10_mu100  = [30.75 30.92 31.02 31.18 31.23 31.33 31.32 31.31 31.08 30.80 30.50 30.40];
n10_mu400  = [];
n10_mu800  = [];
n10_mu1000 = [];
n10_mu1200 = [];

x=0:0.05:0.55;
baseline=[31.45 31.45 31.45 31.45 31.45 31.45 31.45 31.45 31.45 31.45 31.45 31.45];
hold;
h1 = plot(x, n10_mu100, 'b', 'LineWidth', 1.5);
% h5 = plot(x, n10_mu400, 'g', 'LineWidth', 1.5);
% h9 = plot(x, n10_mu800, 'm', 'LineWidth', 1.5);
% h12 = plot(x, n10_mu1000, 'c', 'LineWidth', 1.5);
% h13 = plot(x, n10_mu1200, 'r', 'LineWidth', 1.5);
hbase = plot(x, baseline, '--r', 'LineWidth', 1.50);

xlim([0.00 0.55]);
ylim([30.60 32.80]);

% legend(hbase, 'first pass (without query expansion)')
% legend(h1, '\lambda = 100');
% legend(h5, '\lambda = 100');
% legend(h9, '\lambda = 100');
% legend(h12, '\lambda = 100');
% legend(h13, '\lambda = 100');

xlabel('weight for acoustic pattern','FontSize', 16);
ylabel('MAP (%)','FontSize',16);
title('\lambda=800','FontSize',16);