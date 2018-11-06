#include <vector>
#include <iostream>

int main() {
    typedef std::vector<int> IntVector;
    typedef std::vector<IntVector> IntVector2D;

    IntVector2D map {{1,2}, {1,2}};

    std::cout << map[0][1];
}
