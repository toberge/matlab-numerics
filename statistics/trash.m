bikes = [3, 3, 1, 1, 2, 3, 3, 4];
t = [{'00:10'}, {'00:30'}, {'00:40'}, {'01:00'}, {'01:20'}, {'01:50'}, {'02:40'}, {'04:50'}];
[t, bikes] = textread('freqs.csv', '%5s %f', 'delimiter', ',')