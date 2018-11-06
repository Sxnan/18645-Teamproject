#include <vector>
#include <string>
#include <fstream>
#include <iostream>

class MazeGraph {
    public:
        MazeGraph(std::string map_path) {
            generate_map(map_path);
        }

        friend std::ostream &operator<<(std::ostream &os, MazeGraph maze) {
            for (int i = 0; i < maze.height; ++i) {
                for (int j = 0; j < maze.width; ++j){
                    os << maze.map[i][j];
                }
                os << std::endl;
            }
            return os;
        }

        typedef std::vector<int> IntVector;
        typedef std::vector<IntVector> IntVector2D;

    private:
        IntVector2D map;
        int width;
        int height;

        void generate_map(std::string map_path) {
            generate_map(std::ifstream(map_path));
        }

        void generate_map(std::ifstream ifs) {
            std::string tmp;
            std::getline(ifs, tmp);
            ifs >> tmp >> height;
            ifs >> tmp >> width;
            std::getline(ifs, tmp);
            std::getline(ifs, tmp);

            map.resize(height);
            int i = 0;

            while (std::getline(ifs, tmp)) {
                std::cout << i << std::endl;
                for (int j = 0; j < width; ++j) {
                    if (tmp[j] == '@')
                        map[i].push_back(1);
                    else
                        map[i].push_back(0);
                }
                ++i;
            }
        }
};

int main() {
    MazeGraph graph("./maze512-1-0.map");
    std::cout << graph;
    return 0;
}
