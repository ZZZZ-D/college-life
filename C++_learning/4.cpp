#include <iostream>
using namespace std;
class box
{
public:
    box(int len, int w, int h)
    {
        cout << "box()" << endl;
        _len = len;
        _w = w;
        _h = h;
    }
    int get_len()
    {
        return _len;
    }

private:
    int _len;
    int _w;
    int _h;
};

int main()
{
    box x(20, 10, 20);
    cout << x.get_len() << endl;
    return 0;
}