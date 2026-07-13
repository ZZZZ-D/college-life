#include <iostream>
using namespace std;
class Sample
{
private:
    int x;
    int &rx;

public:
    Sample(int x1) : x(x1), rx(x)
    {
    }
    void pritnf()
    {
        cout << x << " " << rx << endl;
    }
};
// int main()
// {
//     Sample s(4);
//     s.pritnf();
//     return 0;
// }
