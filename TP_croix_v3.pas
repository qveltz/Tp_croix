{
ALGO : TP_croix_v3
BUT : Afficher une croix, donner un nombre qui définira la taille de la croix. Utiliser un caractère entré par l'utilisateur pour créé la croix.
ENTREES : Taille de la croix déffinie par l'utilisateur, un caractère entré par l'utilisateur composera la croix.
SORTIES : Affichage de la croix en fonction du nombre et du caractère entré par l'utilisateur.

VAR
	car:CAR
	i,j,taille_croix:ENTIER



DEBUT

	ECRIRE "Entrez la taille souhaiter !"
	LIRE taille_croix
	ECRIRE "Entrez le caractere qui composera la croix !"
	LIRE car

	ECRIRE "Rappel !"
	ECRIRE "La taille est de ",taille_croix
	ECRIRE "Le caractere est  : ",car

	TANT QUE i<=taille_croix FAIRE
		POUR j DE 1 A taille_croix FAIRE
			SI (i=j) OU (i+j-1=taille_croix) FAIRE
				ECRIRE car
			SINON
				ECRIRE " "
			FIN SI
		ECRIRE " "
		i <- i + 1
		FIN POUR
	FIN TANT QUE
FIN


}

program Tp_croix_v3;

uses crt;

var 
	car:char;
	i,j,taille_croix:integer;



begin


	i:=1;


	clrscr;

	writeln('Entrez la taille souhaiter !');
	readln(taille_croix);
	writeln('Entrez le caractere qui composera la croix !');
	readln(car);


	clrscr;

	writeln('Rappel !!');
	writeln('La taille est de ',taille_croix);
	writeln('Le caractere est : ',car);

	while i<=taille_croix do
		begin
			for j:=1 to taille_croix do
				begin
					if (i=j) or (i+j-1=taille_croix) then 
						write(car)
					else 
						write(' ');
				end;
			writeln(' ');
			i:=i+1;
		end;	
	readkey;
end.