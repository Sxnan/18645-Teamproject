#include <boost/lexical_cast.hpp>
#include <fstream>
#include <iostream>
#include "Map.hpp"
#include "utils.hpp"

unsigned long long total_push_cycle = 0;
unsigned long long total_pop_cycle = 0;
unsigned long long total_heuristic_cycle = 0;
unsigned long long total_test_cycle = 0;
unsigned long long total_tree_edge_cycle = 0;
unsigned long long total_relax_cycle = 0;

int main(int argc, char* argv[]) {
    std::string map_path = "maze512-1-0.map";
    int source_x = 0, source_y = 0;
    int goal_x = 0, goal_y = 0;

    if (argc == 6) {
        map_path = argv[1];
        source_x = boost::lexical_cast<std::size_t>(argv[2]);
        source_y = boost::lexical_cast<std::size_t>(argv[3]);
        goal_x = boost::lexical_cast<std::size_t>(argv[4]);
        goal_y = boost::lexical_cast<std::size_t>(argv[5]);
    }

    std::ifstream ifs(map_path);

    Map map = get_maze(ifs);
    map.set_source(source_x, source_y);
    map.set_goal(goal_x, goal_y);

    for (int i = 0; i < 100; ++i)
        map.solve();

    // std::cout << "Total Push cycle: " << total_push_cycle << std::endl;
    // std::cout << "Total Pop cycle: " << total_pop_cycle << std::endl;
    // std::cout << "Total heuristic cycle: " << total_heuristic_cycle << std::endl;
    // std::cout << "Total test cycle: " << total_test_cycle << std::endl;
    // std::cout << "Total tree_edge cycle: " << total_tree_edge_cycle << std::endl;
    // std::cout << "Total relax cycle: " << total_relax_cycle << std::endl;

    if (map.solved()) {
        std::cout << map.get_solution_length() << std::endl;
    } else {
        std::cout << -1 << std::endl;
    }

    return 0;
}
