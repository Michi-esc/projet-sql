SELECT localisation, COUNT(*) AS nombre_vehicules 
FROM vehicules 
GROUP BY localisation;

SELECT AVG(autonomie_km) AS autonomie_moyenne 
FROM vehicules; 

SELECT id_client, COUNT(*) AS nombre_de_locations 
FROM location
GROUP BY id_client;