function [ reality ] = getreality( car )
reality = [car.x, car.y, car.v, car.a, car.length, car.width, car.angle,...
    car.fx, car.fy];
for i = 1:size(car.sensorData, 2)
   for j = 1:size(car.sensorData, 1)
       reality(end+1) = sqrt(abs(car.sensorData(j, i, 1) - ...
           car.points(1, i))^2+abs(car.sensorData(j, i, 2) - ...
           car.points(2, i))^2);
   end
end
end

