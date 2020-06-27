/*Order Dataset without displaying sorting filed */

q = load "dataset";
q = group q by 'cars';
sorting_variable_query = foreach q generate 'car_color' as 'car_color','cars' as 'cars', count() as 'count_variable';
sorting_query = order sorting_variable_query by 'car_color' asc;
q = foreach sorting_query generate 'cars' as 'cars', 'count_variable' as 'count';
q= limit q 2000;