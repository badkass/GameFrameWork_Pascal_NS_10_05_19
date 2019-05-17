program main_vector;

uses ft_vector;

var
    a, b, tmpVect: vect2D;                                                                                   
    i, VectZ: INTEGER;
    balle: objet;

begin
    //Initialisation d'une composante Z
    VectZ:=1;

    //Initialisation d'une balle
    balle.position.posX:=0;
    balle.position.posY:=0;
    balle.speed:=5;

    writeLn('La balle se trouve en (',balle.position.posX,', ',balle.position.posY,').');
    
    writeLn('Veuillez saisir la valeur x du vecteur A:');
    readLn(a.x);
    writeLn('Veuillez saisir la valeur y du vecteur A:');
    readLn(a.y);
    writeLn('Veuillez saisir la valeur x du vecteur B:');
    readLn(b.x);
    writeLn('Veuillez saisir la valeur y du vecteur B:');
    readLn(b.y);
    writeLn('Veuillez saisir une valeur pour le reel i:');
    readLn(i);
    
    //test des operations
    vectAdd(a, b);
    vectSub(a, b);
    vectMultInt(a, i);
    vectScalVect(a,b);
    vectProdVect(a,b, VectZ);

    //test d'un deplacement vectoriel
    writeLn('En appliquant le vecteur de deplacement A à la balle, elle se trouve maitenant aux coordonnees suivante.');
    tmpVect.x:=balle.position.posX;
    tmpVect.y:=balle.position.posY;
    vectAdd(a, tmpVect);
end.