/*********************************************
 * OPL 22.1.2.0 Model
 * Authors: Hamnouche Houcine et Makhlouf Ibrahim
 * Creation Date: Mar 17, 2025 at 11:00:00 AM
 *********************************************/



range Arcs = 1..12;

//le  Coût
float cout[Arcs] = [
    6, 2, 0, 0,  // Coût de P1 vers V1, V2, V3 ,V4
    3, 9, 0, 0, // Coût de P2 vers V1, V2, V3 ,V4
    1, 0, 5, 0  // Coût de P3 vers V1, V2, V3 ,V4
];

// Offre des ports (bi > 0) et demande des villes (bi < 0)
// on ajoute une autre ville pour prendre le décalage entre la demande et l'offre
// v4 de demande 1
int b[1..7] = [8, 12, 5, -11, -9, -4 ,-1];

dvar float+ x[Arcs]; 

minimize sum(a in Arcs) cout[a] * x[a];

subject to {


	//sommet 1: P1
	x[1] + x[2] + x[3] + x[4] - 0 == b[1]; 
	//sommet 2: P2
	x[5] + x[6] + x[7] + x[8] - 0 == b[2];
	//sommet 3: P3
	x[9] + x[10] +  x[11] + x[12] - 0 == b[3];
	
	//sommet 4: V1
	0 -( x[1]+x[5]+x[9] ) == b[4];
	//sommet 5: V2
	0 -( x[2]+x[6]+x[10] ) == b[5];
	//sommet 6: V3
	0 -( x[3]+x[7]+x[11] ) == b[6];
	//sommet (virtuelle) 7: V4
	0 -( x[4]+x[8]+x[12] ) == b[7];
	
    // Contraintes de capacité sur les arcs
    
    0 <= x[1] <= 8 ;
    0 <= x[2] <= 8 ;
    0 <= x[3] <= 4 ;
    0 <= x[4] <= 1 ; // ville virtuelle
    
    0 <= x[5] <= 11 ;
    0 <= x[6] <= 9 ;
    0 <= x[7] <= 4 ;
    0 <= x[8] <= 1 ; // ville virtuelle
    
    0 <= x[9]  <= 5 ;
    0 <= x[10] <= 5 ;
    0 <= x[11] <= 4 ;
    0 <= x[12] <= 1 ; // ville virtuelle
    
    
}

// Exécution après l'optimisation
execute {
    writeln("Solution optimale trouvée !");
   
    writeln("Coût total minimal : ", cplex.getObjValue());
}
