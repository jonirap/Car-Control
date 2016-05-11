function [ b ] = hascrashed( str, car )
addpath('../sensors');
cars = 1:max(size(str.cars));
cars(car.id) = [];
b = 0;
for c=str.cars{cars}
        if ~isempty(poly2poly(polygonFromCar(car,0),polygonFromCar(c,0)))
            b = 1;
            return;
        end
end
for c=str.obstacles{1:max(size(obstacles))}
        if ~isempty(poly2poly(polygonFromCar(car,0),c.matrix'))
            b = 1;
            return;
        end
end
end

