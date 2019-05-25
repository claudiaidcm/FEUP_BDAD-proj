
Create Trigger RestringeNumMaxViz
Before Insert On Cliente	
When (Select Count(*) From Cliente Where Cliente.email=New.email) = (Select numMaxVisualiz From Subscricao Where Subscricao.tipo=New.Stipo)
Begin
	SELECT raise(rollback, 'Ja atingiu o limite maximo de visualizacoes');
End;