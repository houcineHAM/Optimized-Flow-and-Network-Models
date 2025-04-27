# Optimized Flow and Network Models

This repository contains a collection of OPL (Optimization Programming Language) models designed for solving various optimization problems, primarily related to network flows and transportation problems. These models are implemented using IBM ILOG CPLEX Optimization Studio.

## Models Overview

Each model presented here is designed to solve a specific optimization problem, and the explanations below will help understand their purpose and how they are structured.

### Model 1: Maximization of Flow in a Network

**File: `code 3.opl`**

**Description**:  
This model optimizes the flow in a network, where the goal is to maximize the flow `v` from a source node "S" to a sink node "M". The network is represented by a set of edges with a maximum flow capacity (`Debit`). The model ensures that flow conservation is maintained for each node and that no edge exceeds its capacity.

- **Input**:  
  - `Nodes`: A set of nodes in the network.
  - `Edges`: A set of edges between nodes.
  - `Debit`: Flow capacity for each edge.
  
- **Objective**:  
  Maximize the flow `v` from the source node "S" to the sink node "M".

- **Constraints**:  
  - Flow conservation for each node.
  - Flow on an edge cannot exceed its capacity.

- **Output**:  
  - The maximum flow `v`.
  - The flow on each edge.

### Model 2: Transportation Optimization with Cost Minimization

**File: `code 4.opl`**

**Description**:  
This model focuses on optimizing the transportation of goods across multiple ports and cities while minimizing the total transportation cost. The problem involves a set of ports (`P1`, `P2`, `P3`) and cities (`V1`, `V2`, `V3`, `V4`). Each port has an offer and each city has a demand. The goal is to transport goods from ports to cities, ensuring that the demand and offer balance while minimizing the transportation cost.

- **Input**:  
  - `cout`: Transportation costs from ports to cities.
  - `b`: The supply (offer) at each port and the demand at each city.
  
- **Objective**:  
  Minimize the total transportation cost.

- **Constraints**:  
  - Each port's supply must be balanced with the cities' demand.
  - The flow on each transportation arc must be within the defined capacity.

- **Output**:  
  - The optimal transportation flow for each arc.
  - The minimal total transportation cost.

### Model 3: Minimum Number of Edges to Remove to Disconnect a Network

**File: `code 5.opl`**

**Description**:  
This model addresses the problem of finding the minimum number of edges that must be removed from a network to disconnect the flow between the source "S" and the sink "M". It is a flow-cut problem, where the objective is to minimize the number of edges to be removed while ensuring that the flow from the source to the sink is severed.

- **Input**:  
  - `Nodes`: A set of nodes in the network.
  - `Edges`: A set of edges between nodes.
  - `Debit`: Flow capacity for each edge.
  
- **Objective**:  
  Minimize the number of edges to remove to disconnect the network.

- **Constraints**:  
  - Flow conservation at each node.
  - Flow on an edge must not exceed its capacity.

- **Output**:  
  - The minimum number of edges to remove.

### Model 4: Minimum Number of Routers to Remove to Disconnect the Network

**File: `code 6.opl`**

**Description**:  
This model solves the problem of determining the minimum number of routers (nodes) that need to be removed in order to disconnect the network. The objective is to minimize the number of nodes (routers) to delete while cutting off the flow between the source "S" and the sink "M".

- **Input**:  
  - `Nodes`: A set of nodes (routers) in the network.
  - `Edges`: A set of edges between nodes.
  - `Debit`: Flow capacity for each edge.
  
- **Objective**:  
  Minimize the number of routers (nodes) to remove to disconnect the flow.

- **Constraints**:  
  - Flow conservation for each node.
  - Flow on an edge must not exceed its capacity.

- **Output**:  
  - The minimum number of routers (nodes) to remove.

### Model 5: Minimum Cut in a Flow Network (Edge Removal)

**File: `code 7.opl`**

**Description**:  
This model addresses the problem of finding the minimum cut in a flow network, where the goal is to identify the smallest set of edges that, when removed, will disconnect the source node from the sink node. This is a classical flow network problem in optimization.

- **Input**:  
  - `Nodes`: A set of nodes in the network.
  - `Edges`: A set of edges between nodes.
  - `Debit`: Flow capacity for each edge.
  
- **Objective**:  
  Minimize the number of edges to remove to disconnect the flow between the source and sink.

- **Constraints**:  
  - Flow conservation at each node.
  - Flow on an edge must not exceed its capacity.

- **Output**:  
  - The minimum number of edges to remove for disconnection.

### Model 6: Set Cover Problem for Minimum Cut

**File: `code 8.opl`**

**Description**:  
This model deals with the set cover problem in a flow network, aiming to find the minimum number of edges (or nodes) to remove that form the minimum cut. It also includes additional constraints for connectedness in the flow network.

- **Input**:  
  - `Nodes`: A set of nodes in the network.
  - `Edges`: A set of edges between nodes.
  - `Debit`: Flow capacity for each edge.
  
- **Objective**:  
  Minimize the set of edges or nodes that need to be removed.

- **Constraints**:  
  - Constraints for maintaining flow conservation and connectivity.
  - Flow capacity constraints for each edge.

- **Output**:  
  - The minimum cut solution for the network.

## How to Run

To run these models, you will need to have IBM ILOG CPLEX Optimization Studio installed. Follow the steps below to execute any of the models:

1. Install IBM ILOG CPLEX Optimization Studio from [IBM official website](https://www.ibm.com/products/ilog-cplex-optimization-studio).
2. Open CPLEX Optimization Studio and load the OPL model file (e.g., `code3.opl`).
3. Run the model, and the results will be displayed in the output console.

### Requirements

- IBM ILOG CPLEX Optimization Studio
- A compatible version of Java (typically Java 8 or later)
- Proper configuration of the solver environment

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
