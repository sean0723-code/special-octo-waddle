a= readtable('/Users/chenyanxiang/Downloads/task11.csv');
plot(a.x_NM0_D_Lmin_2_25e_07_Wmin_6e_07_X,a.x_NM0_D_Lmin_2_25e_07_Wmin_6e_07_Y);
hold on;
dy = a.x_NM0_D_Lmin_2_25e_07_Wmin_6e_07_Y(35:50);
dx = a.x_NM0_D_Lmin_2_25e_07_Wmin_6e_07_X(35:50);
p = polyfit(dx, dy, 1);
slope = p(1);
plot(a.x_NM0_D_Lmin_2_25e_07_Wmin_6e_07_X, polyval(p, a.x_NM0_D_Lmin_2_25e_07_Wmin_6e_07_X), 'r-');

plot(a.x_NM0_D_Lmin_2_25e_07_Wmin_2_4e_07_X,a.x_NM0_D_Lmin_2_25e_07_Wmin_2_4e_07_Y);
plot(a.x_NM0_D_Lmin_2_25e_07_Wmin_1_2e_07_X,a.x_NM0_D_Lmin_2_25e_07_Wmin_1_2e_07_Y);
plot(a.x_NM0_D_Lmin_9e_08_Wmin_6e_07_X,a.x_NM0_D_Lmin_9e_08_Wmin_6e_07_Y);
plot(a.x_NM0_D_Lmin_9e_08_Wmin_2_4e_07_X,a.x_NM0_D_Lmin_9e_08_Wmin_2_4e_07_Y);
plot(a.x_NM0_D_Lmin_9e_08_Wmin_1_2e_07_X,a.x_NM0_D_Lmin_9e_08_Wmin_1_2e_07_Y);
plot(a.x_NM0_D_Lmin_4_5e_08_Wmin_6e_07_X,a.x_NM0_D_Lmin_4_5e_08_Wmin_6e_07_Y);
plot(a.x_NM0_D_Lmin_4_5e_08_Wmin_2_4e_07_X,a.x_NM0_D_Lmin_4_5e_08_Wmin_2_4e_07_Y);
plot(a.x_NM0_D_Lmin_4_5e_08_Wmin_1_2e_07_X,a.x_NM0_D_Lmin_4_5e_08_Wmin_1_2e_07_Y);
hold off;

disp(a(:,18));