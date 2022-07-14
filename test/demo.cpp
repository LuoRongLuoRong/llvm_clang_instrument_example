#include <iostream>
#include <string>

// void my_print(std::string var_name, int value) {
//     std::cout << var_name << ": " << value << std::endl;
// }

void my_print(std::string info, int value)
{
    std::cout << info << " " << value << std::endl;
}

int main()
{
    int num;
    std::cin >> num;
    // std::cout << num + 10 << std::endl;
    if (num >= 10)
    {
        // my_print("larger than 10 - ", num);
        my_print("larger than 10", num);
    }
    else
    {
        my_print("less than 10", num);
    }
    return 0;
}
