select id_location, nom, prenom
from location 
natural join client

select l.id_location, v.marque, v.modele
from vehicules v
join location l on v.id=l.id_vehicule

SELECT loc.id_location, s_dep.nom AS station_depart, s_arr.nom AS station_arrivee
FROM location AS loc
JOIN station AS s_dep ON loc.id_station_depart = s_dep.id_station
JOIN station AS s_arr ON loc.id_station_arrivee = s_arr.id_station;