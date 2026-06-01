#include <iostream>
using namespace std;
class CAnimal
{
public:
    // 属性
    char name[32];
    int age;

    // 方法
    void jiao(const char *voice)
    {
        cout << name << voice << endl;
    }
};
