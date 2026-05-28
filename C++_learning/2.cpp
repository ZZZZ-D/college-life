#include <iostream>
using namespace std;
// 定义
namespace nameA
{
    int x;
    void func()
    {
        cout << "hello a" << endl;
    }
}
namespace nameB
{
    int x;
    void func()
    {
        cout << "hello b" << endl;
    }
}
// 嵌套定义
namespace nameC
{
    int a = 100;
    namespace A
    {
        int a = 200;
    }
}
// 命名空间别名
namespace longnamespace
{
    int a = 123;
    void func()
    {
        cout << "hello longnamespace!" << endl;
    }
}
void test01()
{
    int a = 10;
    int &b = a;
    cout << a << endl;
    cout << b << endl;
    b = 100;
    cout << a << endl;
    cout << b << endl;
    int &c = a;
    c = 12345;
    cout << a << endl;
    cout << b << endl;
    cout << c << endl;
    cout << "a:" << &a << endl;
    cout << "b:" << &b << endl;
    cout << "c:" << &c << endl;
}
struct test
{
    int &a;
    int &b;
};
typedef struct Teacher
{
    char name[32];
    int age;
    /* data */
} Teacher;
void printfT2(Teacher &t)
{
    cout << t.age << endl;
    t.age = 32;
}
int main()
{
    nameA::x = 100;
    nameB::x = 1000;
    cout << nameA::x << endl;
    cout << nameB::x << endl;
    nameA::func();
    nameB::func();
    cout << nameC::a << endl;
    cout << nameC::A::a << endl;
    namespace sh = longnamespace;
    longnamespace::func();
    sh::func();
    cout << sh::a << endl;
    test01();
    int a = 100;
    int &b = a;
    cout << a << endl;
    cout << b << endl;
    int c = 300;
    b = c; // 不是用b引用c,而是将c赋值给b
    cout << a << endl;
    cout << b << endl;
    sizeof()求得是数据类型的字节大小
    cout << sizeof(struct test) << endl;
    Teacher teacher;
    teacher.age = 30;
    printfT2(teacher);
    cout << teacher.age << endl;
    return 0;
}
