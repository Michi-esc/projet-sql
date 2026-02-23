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

