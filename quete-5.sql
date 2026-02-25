SELECT *
FROM vehicules
WHERE etat = 'Disponible'
ORDER BY autonomie_km DESC
LIMIT 3;

SELECT localisation AS ville, COUNT(*) AS nb_vehicules
FROM vehicules
WHERE etat = 'Disponible'
GROUP BY localisation
ORDER BY nb_vehicules DESC
LIMIT 1;

SELECT c.id_client, c.nom, c.prenom, COUNT(l.id_location) AS nb_locations
FROM client c
JOIN location l ON c.id_client = l.id_client
GROUP BY c.id_client, c.nom, c.prenom
HAVING COUNT(l.id_location) >= 2;

SELECT v.id, v.marque, v.modele
FROM vehicules v
LEFT JOIN location l ON v.id = l.id_vehicule
WHERE l.id_vehicule IS NULL;
