#include <fstream>
#include <iostream>
#include <string>

int main() {

    int height, width;
    std::ifstream ifs;
    ifs.open("./maze512-1-0.map");

    std::string tmp;
    std::getline(ifs, tmp);

    std::cout << tmp << std::endl;
    ifs >> tmp >> height;
    ifs >> tmp >> width;

    std::cout << "height: " << height << std::endl;
    std::cout << "width: " << width << std::endl;;

    ifs >> tmp;
    std::cout << tmp << std::endl;

    return 0;
}
