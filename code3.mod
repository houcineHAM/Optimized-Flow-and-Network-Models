/*********************************************
 * OPL 22.1.1.0 Model
 * Author: hohamnouch
 * Creation Date: 4 mars 2025 at 14:57:34
 *********************************************/
int n=...;
{string} Nodes=...;
tuple Edge
{
	string u;
	string v;
}
{Edge} Edges with u in Nodes, v in Nodes=...;
float Debit[Edges]=...;
dvar float v;
dvar float+ x[Edges];
maximize v;
subject to
{
forall(i in Nodes) {
sum(e in Edges : e.u == i) x[e] - sum(e in Edges : e.v == i) x[e] == (i == "S" ? v : (i == "M" ? -v : 0));
 }
forall(e in Edges) {
  x[e]<=Debit[e];
}  
}

{Edge} Used = {e | e in Edges : Debit[e]==x[e]};
execute {
writeln("Used Edges", Used);
writeln("Flow for each edge",x);
}