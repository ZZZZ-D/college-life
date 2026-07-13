#include <iostream>
using namespace std;
class Point
{
private:
    int x, y;

public:
    void set(int a, int b)
    {
        x = a;
        y = b;
    }
    void pritnf();
    Point(int m, int n)
    {
        x = m;
        y = n;
        cout << "这是带两个参数的构造函数" << endl;
    }
    Point()
    {
        cout << "这是不带参数的构造函数" << endl;
    }
    ~Point()
    {
        cout << "Destructing..." << endl; // 析构函数
    }
    Point(const Point &p)
    {
        x = p.x;
        y = p.y;
        cout << "Copy Constructing..." << endl; // 拷贝构造函数
    }
};
void Point::pritnf()
{
    {
        cout << "(" << x << "," << y << ")" << endl;
    }
}
int main()
{
    // Point p1;
    // p1.set(3, 4);
    // p1.pritnf();
    // Point *p_1;
    // p_1 = &p1;
    // p_1->set(2, 2);
    // p_1->pritnf();
    // Point p2(2, 4);
    // p2.pritnf();
    Point p1(1, 1);
    Point p2(2, 2);
    Point p3(p1);
    Point p4 = p2;
    return 0;
}