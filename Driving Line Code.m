%Cubic spline test code

%Arrays X and Y contain coordinates of pothole locations
X = [1,6,13,21,33,40,52] %Define x-values (must be increasing to the right)
Y = [1,3,1,2,3,2,4] %Define y-values

for k=[1:length(X)] %Plot potholes as blue circles
plot(X(k), Y(k), 'bo')
hold on
end

for k=[1:length(X)-1] %Take midpoints between potholes to find interpolation points
A(k) = X(k)+(X(k+1)-X(k))/2;
B(k) = min(Y(k),Y(k+1))+abs((Y(k+1)-Y(k))/2);
end

for k=[1:length(X)-1] %Plot driving line in red
plot(A(k), B(k), 'rx')
hold on
end

plotspline2(A,B)