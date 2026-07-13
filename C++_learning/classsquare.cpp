#include <iostream>
using namespace std;
#define pi 3.14
class Square
{
private:
    double r;

public:
    void setr(double x)
    {
        r = x;
    }
    void gets()
    {
        double s = pi * r * r;
        cout << "s = " << s << endl;
    }
};
// int main()
// {
//     Square s;
//     s.setr(2.5);
//     s.gets();
//     return 0;
// }