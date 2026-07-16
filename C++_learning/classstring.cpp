#include <iostream>
#include <cstring>
using namespace std;
class String
{
private:
    char *subf;
    int length;

public:
    String() // 不带参数的构造函数
    {
        length = 0;
        subf = new char;
        subf[0] = '\0';
    }
    String(const char *s) // 带参数的构造函数
    {
        length = strlen(s);
        subf = new char[length + 1];
        strcpy(subf, s);
    }
    String(const String &s)
    {
        length = s.length;
        // subf = s.subf //这是浅拷贝
        subf = new char[length + 1];
        strcpy(subf, s.subf); // 这是深拷贝
    }
    void show()
    {
        cout << subf << endl;
    }
};
// int main()
// {
//     String s1 = "HEllo";
//     String s2 = s1;
//     s1.show();
//     s2.show();
//     return 0;
// }