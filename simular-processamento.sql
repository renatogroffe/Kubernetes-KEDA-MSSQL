DECLARE @UltimoId INT

SELECT @UltimoId = ISNULL(MAX(Id), 0) FROM dbo.HistoricoContagem
WHERE FlProcessado = 0

UPDATE dbo.HistoricoContagem SET FlProcessado = 1
WHERE Id < @UltimoId AND FlProcessado = 0