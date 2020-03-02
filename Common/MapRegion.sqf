_tpos = _this select 0;
_LetterBoxMax = ["A","B","C","D","E","F","G","H","I","J"];
_LetterBoxMin = ["a","b","c","d","e","f","g","h","i","j"];
_tgrid = [(_tpos select 0)/128,99-(_tpos select 1)/128];
_LocalX = (_tgrid select 0);
_LetterX1 = _LetterBoxMax select (_LocalX/10 -1);
_LetterX2 = _LetterBoxMin select (_LocalX%10 -1);
_LocalY = (_tgrid select 1);
_LocalY = _LocalY - ((_LocalY*100)%10)/100;
_LocalY = _LocalY - _LocalY%1 + 1;
format["%1%2%3",_LetterX1,_LetterX2,_LocalY]