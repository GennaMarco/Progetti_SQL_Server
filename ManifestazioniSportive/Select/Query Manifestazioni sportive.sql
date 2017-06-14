USE ManifestazioniSportive
GO

-- numero degli studenti che partecipano ad una determinata manifestazione sportiva
SELECT COUNT(*) AS [Numero studenti partecipanti a 'Calcio']
FROM Studente s, PartecipazioneStudente ps, Manifestazione m
WHERE s.IdStudente = ps.IdStudente AND ps.IdManifestazione = m.IdManifestazione
AND m.Nome = 'Calcio'


-- elenco anagrafico degli allenatori di una attività sportiva
SELECT p.Nome, p.Cognome, p.IdScuola
FROM Professore p, Attivita a
WHERE p.NomeAttivita = a.NomeAttivita AND
a.NomeAttivita = 'Partita di Calcio' AND 
p.Allenatore = 'true'


-- elenco delle scuole con il numero di studenti che partecipano alle attività sportive
SELECT sc.Nome as [Scuola], COUNT(*) AS [Numero studenti partecipanti alle manifestazioni]
FROM Scuola sc, Studente st, PartecipazioneStudente ps
WHERE sc.IdScuola = st.IdScuola AND st.IdStudente = ps.IdStudente
GROUP BY sc.Nome

-- elenco delle scuole con studenti che partecipano ad una determinata attività sportiva(manifestazione)
SELECT sc.Nome, sc.Indirizzo, sc.Telefono
FROM Scuola sc, Studente s, PartecipazioneStudente ps, Manifestazione m
WHERE sc.IdScuola = s.IdScuola AND s.IdStudente = ps.IdStudente AND ps.IdManifestazione = m.IdManifestazione
AND m.IdManifestazione = 1


-- elenco dei professori e scuole di appartenenza in ordine alfabetico
SELECT p.Nome, p.Cognome, s.Nome as Scuola
FROM Professore p, Scuola s
WHERE s.IdScuola = p.IdScuola
ORDER BY p.Nome ASC

-- numero degli studenti partecipanti di una determinata scuola per ciascuna manifestazione sportiva
SELECT m.Nome as [Manifestazione], COUNT(*) AS [Numero studenti partecipanti del Majorana]
FROM Studente st, Scuola sc, PartecipazioneStudente ps, Manifestazione m
WHERE st.IdStudente = ps.IdStudente 
AND sc.IdScuola = st.IdScuola
AND ps.IdManifestazione = m.IdManifestazione
AND sc.Nome = 'Majorana'
GROUP BY m.Nome