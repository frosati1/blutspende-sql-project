SELECT     TOP (100) PERCENT dbo.Mitarbeiter.Nachname, dbo.Mitarbeiter.Vorname, dbo.[tb_Mitarbeiter-Position].Position, ISNULL(CAST(dbo.Blutausgaben.KonserveID AS VARCHAR), 'nicht zugewiesen') AS [KonserveID aus Blutausgabe], ISNULL(CAST(dbo.Blutspenden.TerminID AS VARCHAR), 
                  'nicht zugewiesen') AS [Termin-ID aus Blutspende], ISNULL(CAST(dbo.Labortests.SpendeID AS VARCHAR), 'nicht zugewiesen') AS [Spende-ID aus Labortest]
FROM        dbo.Blutausgaben RIGHT OUTER JOIN
                  dbo.Blutspenden RIGHT OUTER JOIN
                  dbo.[tb_Mitarbeiter-Position] INNER JOIN
                  dbo.Mitarbeiter ON dbo.[tb_Mitarbeiter-Position].PositionID = dbo.Mitarbeiter.PositionID LEFT OUTER JOIN
                  dbo.Labortests ON dbo.Mitarbeiter.MitarbeiterID = dbo.Labortests.MitarbeiterID ON dbo.Blutspenden.MitarbeiterID = dbo.Mitarbeiter.MitarbeiterID ON dbo.Blutausgaben.MitarbeiterID = dbo.Mitarbeiter.MitarbeiterID
WHERE     (dbo.Blutausgaben.KonserveID IS NOT NULL) OR
                  (dbo.Blutspenden.TerminID IS NOT NULL) OR
                  (dbo.Labortests.SpendeID IS NOT NULL)
ORDER BY dbo.Mitarbeiter.Nachname, dbo.Mitarbeiter.Vorname