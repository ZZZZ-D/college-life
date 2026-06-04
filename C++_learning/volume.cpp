#include <iostream>
using namespace std;
class box
{
public:
    double length;
    double width;
    double height;
    void v()
    {
        double volume;
        volume = length * width * height;
        cout << "volume:" << volume << endl;
    }
};
class boxx
{
private:
    double _length;
    double _width;
    double _height;
    double _volume;
    double _surface;

public:
    bool set_length(int len);
};
bool boxx::set_length(int len)
{
    if (len < 0 || len > 1000)
    {
        cout << "len error" << endl;
        return false;
    }
    _length = len;
    return true;
}
/*
可以在头文件中对box类进行声明
在另外的cpp文件对类中的函数进行实现
*/
int main()
{
    box my_box;
    my_box.height = 2.3;
    my_box.length = 3.4;
    my_box.width = 7;
    my_box.v();
    return 0;
}
