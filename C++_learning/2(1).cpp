#include <iostream>
using namespace std;
namespace abc
{
    void func()
    {
        cout << "无" << endl;
    }
    void func(int x)
    {
        cout << "int x :" << x << endl;
    }
    void func(int x, char y)
    {
        cout << "int x : " << x << " " << "char y : " << y << endl;
    }
    void func(char x, int y)
    {
        cout << "char x : " << x << " " << "int y : " << y << endl;
    }
}
int main()
{
    abc::func();
    abc::func(10);
    abc::func(10, 'l');
    abc::func('l', 10);
    return 0;
}
