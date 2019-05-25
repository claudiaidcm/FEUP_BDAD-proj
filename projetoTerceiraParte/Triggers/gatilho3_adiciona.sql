
Create Trigger OnlyOneType_Filme
Before Insert On Filme
When Exists ( Select idVideo From Serie as S Where New.idVideo = S.idVideo 
				UNION 
				Select idVideo From Documentario as S Where New.idVideo = S.idVideo)
Begin
	SELECT raise(rollback, 'Este video ja esta registado como sendo de outro tipo');
End;

Create Trigger OnlyOneType_Serie
Before Insert On Serie
When Exists ( Select idVideo From Filme as S Where New.idVideo = S.idVideo 
				UNION 
				Select idVideo From Documentario as S Where New.idVideo = S.idVideo)
Begin
	SELECT raise(rollback, 'Este video ja esta registado como sendo de outro tipo');
End;

Create Trigger OnlyOneType_Documentario
Before Insert On Documentario
When Exists ( Select idVideo From Serie as S Where New.idVideo = S.idVideo 
				UNION 
				Select idVideo From Filme as S Where New.idVideo = S.idVideo)
Begin
	SELECT raise(rollback, 'Este video ja esta registado como sendo de outro tipo');
End;