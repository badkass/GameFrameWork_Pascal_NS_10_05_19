unit ft_vector;

interface
    type
    vect2D = record
        x: INTEGER; 
        y: INTEGER; 
    end;


    type
    pos = record
        posX: INTEGER;      //définis la coordonée horizontale
        posY: INTEGER;      //définis la coordonée verticale
    end;

    objet = record
        position: pos;
        texture: INTEGER;   //couleur de la balle
        visible: BOOLEAN;   //définis la visibilité de la balle 
        speed: INTEGER;     //définis le multiplicateur de vitesse
    end;


    function getXfrom(target:vect2D):vect2D;
    function getYfrom(target:vect2D):vect2D;
    procedure setXFromTo(target:vect2D; var putted: vect2D);
    procedure setYFromTo(target:vect2D; var putted: vect2D);

    procedure vectAdd(vect1, vect2 : vect2D);
    procedure vectSub(vect1, vect2 : vect2D);
    procedure vectMultInt(vect1: vect2D; i: INTEGER);
    procedure vectScalVect(vect1, vect2 : vect2D);
    procedure vectProdVect(vect1, vect2 : vect2D; VectZ: INTEGER);
    
implementation

    //Accesseur X
    function getXfrom(target:vect2D):vect2D;
    begin
        getXfrom.x:=target.x;
    end;

    //Accesseur Y
    function getYfrom(target:vect2D):vect2D;
    begin
        getYfrom.y:=target.y;
    end;

    //Mutateur X
    procedure setXFromTo(target:vect2D; var putted: vect2D); 
    begin
        putted:=getXfrom(target);
    end;

    //Mutateur Y
    procedure setYFromTo(target:vect2D; var putted: vect2D); 
    begin
        putted:=getYfrom(target);
    end;

    //Addition vectorielle
    procedure vectAdd(vect1, vect2 : vect2D);
    var
        vectAdd: vect2D;
    begin
        vectAdd.x:=vect1.x+vect2.x;
        vectAdd.y:=vect1.y+vect2.y;
        writeLn('La somme des vecteurs A(', vect1.x, ', ', vect1.y, ') et B(', vect2.x, ', ', vect2.y, ') est (', vectAdd.x, ', ', vectAdd.y, ').');
    end;

    //Soustraction vectorielle
    procedure vectSub(vect1, vect2 : vect2D);
    var
        vectSub: vect2D;
    begin
        vectSub.x:=vect1.x-vect2.x;
        vectSub.y:=vect1.y-vect2.y;
        writeLn('La difference des vecteurs A(', vect1.x, ', ', vect1.y, ') et B(', vect2.x, ', ', vect2.y, ') est (', vectSub.x, ', ', vectSub.y, ').');
    end;

    //Multiplication par un reel
    procedure vectMultInt(vect1: vect2D; i: INTEGER);
    var
        vectMultInt: vect2D;
    begin
        vectMultInt.x:=vect1.x*i;
        vectMultInt.y:=vect1.y*i;
        writeLn('Le produit du vecteur A(', vect1.x, ', ', vect1.y, ') par ', i, ' est (', vectMultInt.x, ', ', vectMultInt.y, ').');
    end;

    //Produit scalaire
    procedure vectScalVect(vect1, vect2 : vect2D);
    var
        vectScalVect: INTEGER;
    begin
        vectScalVect:=((vect1.x*vect2.x)+(vect1.y*vect2.y));
        writeLn('Le produit scalaire des vecteurs A(', vect1.x, ', ', vect1.y, ') et B(', vect2.x, ', ', vect2.y, ') vaut ', vectScalVect, '.');
    end;

    //Produit vectoriel
    procedure vectProdVect(vect1, vect2 : vect2D; VectZ: INTEGER);
    var
        vectProdVect: vect2D;
    begin
        vectProdVect.x:=vect1.y*VectZ-VectZ*vect2.y;
        vectProdVect.y:=VectZ*vect2.x-vect1.x*VectZ;
        writeLn('Le produit vectoriel des vecteurs A(', vect1.x, ', ', vect1.y, ') et B(', vect2.x, ', ', vect2.y, ') est (', vectProdVect.x, ', ', vectProdVect.y, ').');
    end;
end.