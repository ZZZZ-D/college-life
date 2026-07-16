#include <iostream>
using namespace std;
class Student
{
public:
    static int count;    // 班级人数 静态数据成员
    static double total; // 班级的总分 静态数据成员
    Student(double score)
    {
        this->socre = score;
        count++;
        total += score;
    }
    static double GetAverage()
    {
        return total / count;
    }

private:
    double socre; // 个人的分数
};
int Student::count = 0;
double Student::total = 0;
// int main()
// {
//     cout << Student::count << endl;
//     cout << Student::total << endl;
//     Student s1(60.7);
//     cout << Student::count << endl;
//     cout << Student::total << endl;
//     Student s[3] = {Student(60), Student(70), Student(80)};
//     cout << Student::GetAverage() << endl;
//     return 0;
// }