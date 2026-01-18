SELECT     TOP (100) PERCENT dbo.Spendetermine.TerminDatum, dbo.Spendezentren.Name, COUNT(dbo.Spender.SpenderID) AS [Anzahl Spenden pro Tag]
FROM        dbo.Blutspenden INNER JOIN
                  dbo.Spendetermine ON dbo.Blutspenden.TerminID = dbo.Spendetermine.TerminID INNER JOIN
                  dbo.Spender ON dbo.Spendetermine.SpenderID = dbo.Spender.SpenderID INNER JOIN
                  dbo.Spendezentren ON dbo.Spendetermine.ZentrumID = dbo.Spendezentren.ZentrumID
WHERE     (dbo.Blutspenden.Geeignet = 1)
GROUP BY dbo.Spendezentren.Name, dbo.Spendetermine.TerminDatum
ORDER BY dbo.Spendetermine.TerminDatum, dbo.Spendezentren.Name