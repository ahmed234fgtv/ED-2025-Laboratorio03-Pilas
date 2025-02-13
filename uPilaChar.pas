unit uPilaChar;

interface

type
	tNodo = record
		info: char;
		ant: ^tNodo;
 	end;

 	tPilachars= ^tNodo;

procedure initialize(var p:tPilachars);
procedure push(var p:tPilachars; x:char);
procedure pop(var p:tPilachars);
function peek(p:tPilachars):char;
function isEmpty(p:tPilachars):boolean;

implementation

procedure initialize(var p:tPilachars);
	begin
		p := nil; { Inicializa el puntero cima de la pila a nil }
	end;

procedure push(var p:tPilachars; x:char);
	var
		nuevo: ^tnodo;
	begin
		new(nuevo); { Crea un nuevo nodo }
		nuevo^.info := x; { Asigna el valor al nuevo nodo }
		nuevo^.ant := p; { Enlaza el nuevo nodo con la anterior cima }
		p := nuevo; { Actualiza la cima de la pila }
	end;

procedure pop(var p:tPilachars);
	var
		aux: ^tnodo;
	begin
		if not isEmpty(p) then
		begin
			aux := p; { Apunta con un puntero auxiliar al nodo en la cima (a eliminar) }
			p := p^.ant; { Actualiza la cima de la pila }
			dispose(aux); { Libera la memoria del elemento a eliminar }
		end;
	end;

function peek(p:tPilachars):char;
	begin
		if not isEmpty(p) then
		peek := p^.info; { Devuelve la parte información de la cima de la pila }
	end;

function isEmpty(p:tPilachars): boolean;
	begin
		isEmpty := p = nil; { Devuelve true si la cima es nil }
	end;

end.

