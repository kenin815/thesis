n5_mu800  = [31.82 31.97 31.99 32.04 32.03 32.08 32.10 32.12 32.08 31.99 31.84 31.77];
n10_mu800 = [32.05 32.21 32.25 32.42 32.50 32.57 32.60 32.65 32.73 32.70 32.68 32.58];
n15_mu800 = [31.99 32.15 32.24 32.35 32.40 32.43 32.42 32.43 32.42 32.38 32.23 32.11];
n20_mu800 = [31.88 32.00 32.12 32.22 32.36 32.35 32.40 32.39 32.38 32.21 32.03 31.82];
n25_mu800 = [31.62 31.82 32.00 32.18 32.21 32.30 32.29 32.28 32.25 32.10 31.88 31.76];

x=0:0.05:0.55;
baseline=[31.45 31.45 31.45 31.45 31.45 31.45 31.45 31.45 31.45 31.45 31.45 31.45];
hold;
h1 = plot(x, n5_mu800, 'b', 'LineWidth', 1.5);
h5 = plot(x, n10_mu800, 'g', 'LineWidth', 1.5);
h9 = plot(x, n15_mu800, 'm', 'LineWidth', 1.5);
h12 = plot(x, n20_mu800, 'c', 'LineWidth', 1.5);
h13 = plot(x, n25_mu800, 'r', 'LineWidth', 1.5);
hbase = plot(x, baseline, '--r', 'LineWidth', 1.05);

xlim([0.00 0.55]);
ylim([31.00 33.00]);

legend(hbase, 'first pass (without query expansion)')
legend(h1, 'N = 5');
legend(h5, 'N = 10');
legend(h9, 'N = 15');
legend(h12, 'N = 20');
legend(h13, 'N = 25');

xlabel('weight for acoustic pattern','FontSize', 16);
ylabel('MAP (%)','FontSize',16);
title('\lambda=800','FontSize',16);