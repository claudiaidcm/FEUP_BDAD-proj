
Create Trigger somaMinVisualiza
After Insert On Visualiza
Begin
	Update Cliente
	Set minVisualizados = minVisualizados + (Select duracao From Video Where Video.idVideo=New.idVideo)
	Where Cliente.idCliente = New.idCliente;
End;