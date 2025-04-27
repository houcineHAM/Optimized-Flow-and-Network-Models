/*********************************************
 * OPL 22.1.2.0 Model
 * Author: Houcine
 * Creation Date: 17 mars 2025 at 14:11:01
 *********************************************/
int n=...;
range Nodes=1..n; 
{int} NodeSet=asSet(Nodes);
tuple Edge
{
  int u;
  int v;
}
{Edge} Edges with u in Nodes, v in Nodes=...;
// sous ensemble et son complémentaire 
range S=1..ftoi(round(2^n));
{int} Sub[s in S]={ i | i in Nodes :
(s div ftoi(round(2^(i-1)))) mod 2 == 1};
{int} Compl[s in S]=NodeSet diff Sub[s];
{int} Voisins1[i in Nodes] = {j | <i,j> in Edges}; // ensemble de voisinage 1
{int} Voisins2[i in Nodes] = {j | <j,i> in Edges};// ensemble de voisinage 2
{int} Voisins[i in Nodes] = Voisins1[i] union Voisins2[i];  // Union des deux ensembles
// Bordure de W : ensemble des arêtes reliant un sommet de W à un sommet en dehors de W
{Edge} bord[s in S] = {e | e in Edges : (e.u in Sub[s] && e.v in Compl[s]) || (e.v in Sub[s] && e.u in Compl[s])};
dvar boolean x[Nodes];
minimize sum(i in Nodes) x[i];  

subject to {
    // PDS 
   //contrainte de PDS
    forall(i in Nodes)
      {
    x[i]+sum(j in Voisins[i]) x[j]>=1;
  }  
  //PMIS
  //contrainte pour PMIS= contrainte de PDS + cette contrainte : 
  forall(e in Edges)
      {
    x[e.u]+x[e.v]<=1;
  }  
  //PWCIS
  //Constrainte de PWCIS = contrainte PDS+ contrainte de PMIS + cette contrainte:
  forall(s in S:0<card(Sub[s])<n)
  {
  sum(e in bord[s]) (x[e.u]+x[e.v])>=1;
  } 
}

execute {
    writeln("PWCIS : ");
    for(var i in Nodes) 
    {
        if (x[i] == 1) {
            writeln("Sommet ", i,"-");
        }
    }
}