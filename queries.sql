--retrieve names of all employees
-- SELECT * FROM employee;

--find total quantity of all buckets of ice_cream
-- SELECT SUM(quantity) FROM buckets_ice_cream;

--list types of cones with less than 30 of quantity
-- SELECT types_of_cones, quantity FROM boxes_cones
-- WHERE quantity < 30;

--find total quantity of all items(types of ice cream, types of cones )
-- SELECT (SUM(boxes_cones.quantity) + SUM(buckets_ice_cream.quantity)) AS total_quantity FROM buckets_ice_cream 
-- JOIN boxes_cones ON ice_cream_id = boxes_cones_id;

--get types and quanities of buckets of ice cream between $25 and $75
-- SELECT types_ice_cream, quantity FROM buckets_ice_cream
-- WHERE quantity BETWEEN 25 AND 75;

--list the names and start times of employees who clocked in after '2024-03-07 13:00:00'
-- SELECT employee.employee_name, shifts.start_time FROM employee
-- JOIN shifts ON employee.employee_id = shifts.employee_id
-- WHERE shifts.start_time > '2024-03-07 13:00:00';
