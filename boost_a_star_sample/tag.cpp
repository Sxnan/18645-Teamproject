#include <iostream>

struct first_tag {};
struct second_tag {};

template <typename T>
struct traits {
    typedef typename T::tag tag;
};

class firstTagClass {
    public:
        typedef first_tag tag;
};

class secondTagClass {
    public:
        typedef second_tag tag;
};

template <typename T>
class Function {
    public:
        void func(T t) {
            func(t, typename traits<T>::tag());
        }
    private:
        void func(T, first_tag) {
            std::cout << "first tag\n";
        }

        void func(T, second_tag) {
            std::cout << "second tag\n";
        }
};

int main() {
    firstTagClass f;
    Function<decltype(f)> func;
    func.func(f);
    return 0;
}
