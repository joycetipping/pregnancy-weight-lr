data = load('data.csv');
x = data(:,1);
y = data(:,2);
X = [ones(length(x),1), x];
theta = (inv(X'*X))*X'*y;
hold on;
plot(x, X*theta);
