% Read the CSV file
a = readtable('/Users/chenyanxiang/Downloads/task11.csv');

% Plot data from the table
intersection_points = [];

hold on;
for i = 1:2:size(a, 2)-1 % Loop through column pairs
    % Plot the curve
    plot(a{2:end, i}, a{2:end, i+1});
    
    % Fit a line to a specific range of data points
    range_start = 35;
    range_end = 50;
    dy = a{range_start:range_end, i+1};
    dx = a{range_start:range_end, i};
    p = polyfit(dx, dy, 1);
    
    % Plot the fitted line
    plot(a{2:end, i}, polyval(p, a{2:end, i}));
    
    % Find intersection points with x-axis
    x_values = a{2:end, i};
    y_values = polyval(p, a{2:end, i});
    for j = 2:numel(y_values)
        if sign(y_values(j)) ~= sign(y_values(j-1))
            % Use fzero to find the root
            intersection_point = fzero(@(x) interp1(x_values, y_values, x, 'linear'), [x_values(j-1), x_values(j)]);
            intersection_points = [intersection_points, intersection_point];
        end
    end
end

% Plot the intersection points
plot(intersection_points, zeros(size(intersection_points)), 'ro');

% Plot the x-axis (y=0 line)
xlim([min(a{:,1}), max(a{:,1})]); % set x-axis limits
plot([min(a{:,1}), max(a{:,1})], [0, 0], 'k--'); % plot the x-axis line

hold off;
disp(intersection_points);