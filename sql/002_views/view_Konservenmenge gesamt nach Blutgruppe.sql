SELECT     TOP (100) PERCENT dbo.Blutgruppen.Blutgruppe, dbo.Blutgruppen.Rhesusfaktor, SUM(dbo.Blutkonserven.MengeML) AS [Gesamtmenge ml]
FROM        dbo.Spender INNER JOIN
                  dbo.Blutgruppen ON dbo.Spender.BlutgruppeID = dbo.Blutgruppen.BlutgruppeID INNER JOIN
                  dbo.Spendetermine ON dbo.Spender.SpenderID = dbo.Spendetermine.SpenderID INNER JOIN
                  dbo.Blutspenden INNER JOIN
                  dbo.Blutkonserven ON dbo.Blutspenden.SpendeID = dbo.Blutkonserven.SpendeID ON dbo.Spendetermine.TerminID = dbo.Blutspenden.TerminID
WHERE     (dbo.Blutkonserven.StatusID = 4)
GROUP BY dbo.Blutgruppen.Blutgruppe, dbo.Blutgruppen.Rhesusfaktor