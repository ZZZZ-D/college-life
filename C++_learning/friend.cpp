#include <iostream>
#include <cmath>
using namespace std;
class Point
{
private:
    int x, y;

public:
    Point(int x = 0, int y = 0)
    {
        this->x = x;
        this->y = y;
    }
    friend double distance(Point &p1, Point &p2);
};
double distance(Point &p1, Point &p2)
{
    double d;
    d = sqrt((p1.x - p2.x) * (p1.x - p2.x) + (p1.y - p2.y) * (p1.y - p2.y));
    return d;
}
int main()
{
    Point p1(2, 0);
    Point p2(3, 0);
    cout << distance(p1, p2) << endl;
    return 0;
}
