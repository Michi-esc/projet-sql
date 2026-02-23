select id_location, nom, prenom
from location 
natural join client

select l.id_location, v.marque, v.modele
from vehicules v
join location l on v.id=l.id_vehicule