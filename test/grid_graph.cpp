#include <boost/graph/grid_graph.hpp>
#include <iostream>


int main() {
    typedef boost::grid_graph<2> Graph;
    typedef boost::graph_traits<Graph> Traits;

    boost::array<Traits::vertices_size_type, 2> lengths = { { 3,3 } };

    Graph graph(lengths);

    for (Traits::vertices_size_type i = 0; i < num_vertices(graph); ++i) {
        Traits::vertex_descriptor u = vertex(i, graph);
        std::cout << "Index of vertex " << i << " is " << get(boost::vertex_index, graph, u) << std::endl;
        std::cout << u[0] << " "<< u[1] << std::endl;
        std::pair<Traits::out_edge_iterator, Traits::out_edge_iterator> res = out_edges(u, graph);
        while (res.first != res.second) {
            Traits::vertex_descriptor v = target(*res.first, graph);
            std::cout << "reachable vertex: " << v[0] << " " << v[1]<< std::endl;
            ++res.first;
        }

        std::cout << "-------------------------------" << std::endl;
    }

    return 0;
}
