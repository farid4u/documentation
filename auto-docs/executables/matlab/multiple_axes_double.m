signin('TestBot', 'r1neazxo9w')

trace1 = struct(...
  'x', [1, 2, 3], ...
  'y', [40, 50, 60], ...
  'name', 'yaxis data', ...
  'type', 'scatter');
trace2 = struct(...
  'x', [2, 3, 4], ...
  'y', [4, 5, 6], ...
  'name', 'yaxis2 data', ...
  'yaxis', 'y2', ...
  'type', 'scatter');
data = {trace1, trace2};
layout = struct(...
    'title', 'Double Y Axis Example', ...
    'yaxis', struct('title', 'yaxis title'), ...
    'yaxis2', struct(...
      'title', 'yaxis2 title', ...
      'titlefont', struct('color', 'rgb(148, 103, 189)'), ...
      'tickfont', struct('color', 'rgb(148, 103, 189)'), ...
      'overlaying', 'y', ...
      'side', 'right'));
response = plotly(data, struct('layout', layout, 'filename', 'multiple-axes-double', 'fileopt', 'overwrite'));
plot_url = response.url
