program pilas_ej1;

uses
    sysutils, 
    uPilaChar; { 1.1 Genera una unidad pila cuyos nodos almacenen un único carácter.}

function balanceada(cadena:string):boolean;
	var
		i:integer;
	begin
		initialize(p);
		length(cadena);
		if (isEmpty(p)) then
		begin
			for i:=0 to length(cadena)-1 do
			begin
				if (cadena[i]='(') then
					push(p,cadena[i]);
				if (cadena[i]=')') and (not isEmpty(p)) then
					pop(p);
			end;
		end;
		
		if (isEmpty(p)) then
			balanceada:=true
		else
			balanceada:=false;
			
	end;

function balanceadaCorchetes(cadena:string):boolean;
	var
		i:integer;
		correcto1,correcto2:boolean;
	begin
		correcto1:=false;
		correcto2:=false;
		initialize(p);
		length(cadena);
		
		if (isEmpty(p)) then
		begin
			for i:=0 to length(cadena)-1 do
			begin
				if (cadena[i]='(') then
					push(p,cadena[i]);
				if (cadena[i]=')') and (not isEmpty(p)) then
					pop(p);
			end;
			if (isEmpty) then
				correcto1:=true;
		end;
		
		if (isEmpty(p)) then
		begin
			for i:=0 to length(cadena)-1 do
			begin
				if (cadena[i]='[') then
					push(p,cadena[i]);
				if (cadena[i]=']') and (not isEmpty(p)) then
					pop(p);
			end;
			if (isEmpty) then
				correcto2:=true;
		end;
		
		if (correcto1) and (correcto2) then
			balanceadaCorchetes:=true
		else
			balanceadaCorchetes:=false;
	end;

const
    expresion1 = '(3+2)*5';
    resultado1 = true;
    expresion2 = '3+(4-2';
    resultado2 = false;
    expresion3 = '(3+2)*5+(4-2)';
    resultado3 = true;
    expresion4 = '(3(+2)*5)+(4-2';
    resultado4 = false;
    expresion5 = '[3+2]*5';
    resultado5 = true;
    expresion6 = '3+[4-2';
    resultado6 = false;
    expresion7 = '[3+2]*5+[4-2]';
    resultado7 = true;
    expresion8 = '[3[+2]*5]+[4-2)';
    resultado8 = false;
    expresion9 = '[3[+2]*5)+[4-2]';
    resultado9 = false;
    expresion10 = '(3[+2]*5(+[4-2]';
    resultado10 = false;
    expresion11 = '(3[+2]*5)+[4-2]';
    resultado11 = true;

{ 1.2}
function balanceada(exp: string): boolean;
begin
    WriteLn('Implementa la función balanceada');
    balanceada := false;
end;


{ 1.3}
function balanceadaCorchetes(exp: string): boolean;
begin
    WriteLn('Implementa la función balanceadaCorchetes');
    balanceadaCorchetes := false;
end;

function showOkWrong(ok: boolean): string;
begin
    if ok then
        showOkWrong := 'OK'
    else
        showOkWrong := 'ERROR';
end;


begin
    WriteLn('Ejemplo #', '  Expresión', #9#9, 'Res = Esp', #9, 'OK/ERROR');
    WriteLn('---------------------------------------------------------');
    WriteLn('Ejemplo 1: ', expresion1, #9#9, balanceada(expresion1), ' = ', resultado1, #9, showOkWrong(balanceada(expresion1) = resultado1));
    WriteLn('Ejemplo 2: ', expresion2, #9#9, balanceada(expresion2), ' = ', resultado2, #9, showOkWrong(balanceada(expresion2) = resultado2));
    WriteLn('Ejemplo 3: ', expresion3, #9, balanceada(expresion3), ' = ', resultado3, #9, showOkWrong(balanceada(expresion3) = resultado3));
    WriteLn('Ejemplo 4: ', expresion4, #9, balanceada(expresion4), ' = ', resultado4, #9, showOkWrong(balanceada(expresion4) = resultado4));
    WriteLn('Ejemplo 5: ', expresion5, #9#9, balanceadaCorchetes(expresion5), ' = ', resultado5, #9, showOkWrong(balanceadaCorchetes(expresion5) = resultado5));
    WriteLn('Ejemplo 6: ', expresion6, #9#9, balanceadaCorchetes(expresion6), ' = ', resultado6, #9, showOkWrong(balanceadaCorchetes(expresion6) = resultado6));
    WriteLn('Ejemplo 7: ', expresion7, #9, balanceadaCorchetes(expresion7), ' = ', resultado7, #9, showOkWrong(balanceadaCorchetes(expresion7) = resultado7));
    WriteLn('Ejemplo 8: ', expresion8, #9, balanceadaCorchetes(expresion8), ' = ', resultado8, #9, showOkWrong(balanceadaCorchetes(expresion8) = resultado8));
    WriteLn('Ejemplo 9: ', expresion9, #9, balanceadaCorchetes(expresion9), ' = ', resultado9, #9, showOkWrong(balanceadaCorchetes(expresion9) = resultado9));
    WriteLn('Ejemplo 10: ', expresion10, #9, balanceadaCorchetes(expresion10), ' = ', resultado10, #9, showOkWrong(balanceadaCorchetes(expresion10) = resultado10));
    WriteLn('Ejemplo 11: ', expresion11, #9, balanceadaCorchetes(expresion11), ' = ', resultado11, #9, showOkWrong(balanceadaCorchetes(expresion11) = resultado11));
    readln;
end.




    

