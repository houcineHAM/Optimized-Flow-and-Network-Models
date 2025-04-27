# Optimization Models in OPL

This repository contains various optimization models written in **OPL (Optimization Programming Language)**. Each code solves a different type of optimization problem. The models are implemented using **IBM ILOG CPLEX Optimization Studio**, which is a tool for solving optimization problems.

## List of Codes

### Code 1: Basic Optimization with Constraints
- **Description**: A basic optimization problem where we maximize a set of variables with constraints on both the variables and the inputs.
- **Input**: Arrays `a` and `b` (parameter values).
- **Output**: Values of decision variables `x1` and `x2`, along with the optimal value of `x3`.
- **Key Elements**:
    - Maximization of decision variables `x1`, `x2`, and `x3`.
    - Constraints based on the values in `a` and `b`.

---

### Code 2: Flow Network Optimization
- **Description**: This model optimizes a flow network, minimizing the flow across a set of edges subject to node constraints.
- **Input**: List of nodes, edges, and their respective flow capacities (`Debit`).
- **Output**: The flow on each edge of the network.
- **Key Elements**:
    - Maximization of the flow variable `v`.
    - Flow conservation at each node.

---

### Code 3: Flow Network Optimization (Extended)
- **Description**: Similar to Code 2, this model also focuses on optimizing a flow network, but with an additional feature of tracking used edges.
- **Input**: List of nodes, edges, and their respective flow capacities (`Debit`).
- **Output**: The flow for each edge, along with a list of used edges.
- **Key Elements**:
    - Maximization of the flow variable `v`.
    - Tracking of edges with non-zero flow.

---

### Code 4: Minimum Cost Flow Problem
- **Description**: This model minimizes the cost of transporting goods through a network of ports and cities, subject to supply and demand constraints at each node.
- **Input**: Supply and demand values for ports and cities (`b`) and the transportation costs (`cout`).
- **Output**: The optimal flow configuration minimizing the total transportation cost.
- **Key Elements**:
    - Minimization of transportation costs.
    - Flow conservation at each node (ports and cities).
    - Capacity constraints on the arcs.

---

### Code 5: Minimum Cable Removal for Disconnection
- **Description**: This model calculates the minimum number of cables that need to be removed to disconnect a network.
- **Input**: List of nodes and edges, with flow capacities (`Debit`).
- **Output**: The minimum number of cables that need to be removed to disconnect the network.
- **Key Elements**:
    - Maximization of the flow variable `v`.
    - Determining the minimum cables to disconnect the network.

---

### Code 6: Minimum Router Removal for Disconnection
- **Description**: This model calculates the minimum number of routers that need to be removed to disconnect a network.
- **Input**: List of nodes and edges, with flow capacities (`Debit`).
- **Output**: The minimum number of routers that need to be removed.
- **Key Elements**:
    - Maximization of the flow variable `v`.
    - Determining the minimum routers to disconnect the network.

---

### Code 7: PWCIS Optimization Model
- **Description**: This model solves a set covering problem, determining the optimal subset of nodes such that certain constraints are met.
- **Input**: List of nodes and edges with their relationships.
- **Output**: The set of nodes that satisfies the constraints.
- **Key Elements**:
    - The model aims to minimize the number of nodes included in the optimal solution.
    - Constraints include PDS, PMIS, and PWCIS, related to the coverage of the graph.

---

## Prerequisites

- **IBM ILOG CPLEX Optimization Studio** is required to run these models.
- The models are written for **OPL 22.1.x** versions.

## Running the Models

1. Download and install **IBM ILOG CPLEX Optimization Studio**.
2. Create a new project and import the OPL models from this repository.
3. Run the model in the IDE to view the results in the output console.

## License

This repository is available under the MIT License. See the [LICENSE](LICENSE) file for more information.

## Authors

- **Houcine Hamnouche**
- **Ibrahim Makhlouf**

