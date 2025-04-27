/*********************************************
 * OPL 22.1.1.0 Model
 * Author: ibmakhlouf
 * Creation Date: 4 mars 2025 at 16:28:36
 *********************************************/
float a[1..3] = ...;
float b[1..4] = ...;  

dvar float+ x1[1..4];
dvar float+ x2[1..3];
dvar float+ x3;

maximize x1[1] + x1[2] + x1[3] + x1[4] + x2[1] + x2[2] + x3;

subject to {
    x1[1] + x1[2] + x1[3] + x1[4] <= a[1];
    x2[1] + x2[2] <= a[2]; 
    x3 <= a[3];
    
    x1[1] <= b[1]; 
 	x1[2] <= b[2];     
    x1[3] + x2[1] <= b[3];
    x1[4] + x2[2] + x3 <= b[4];
}
execute{
    writeln("les valeur admissibles de la premier ligne ");
    for(var i = 1; i <= 4; i++) {
        writeln("x1[", i, "] = ", x1[i]);
    }
    
    writeln("les valeur admissibles de la deuxieme ligne "); 
    for(var i = 1; i <= 2; i++) {
        writeln("x2[", i+2, "] = ", x2[i]);
    }
    
    writeln("les valeur admissibles de la troisieme ligne" );
    writeln("x3 = ", x3);
    
    
}

