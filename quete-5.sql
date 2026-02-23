SELECT *
FROM vehicules
WHERE etat = 'Disponible'
ORDER BY autonomie_km DESC
LIMIT 3;