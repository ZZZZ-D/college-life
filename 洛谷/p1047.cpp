#include <bits/stdc++.h>
using namespace std;
int main()
{
    // vector<int> v1;
    // int l, m;
    // cin >> l >> m;
    // cout << endl;
    // for (int i = 0; i <= l; i++)
    // {
    //     v1.emplace_back(i);
    // }
    // for (int j = 0; j < m; j++)
    // {
    //     int a = 0;
    //     int b = 0;
    //     cin >> a >> b;
    //     cout << endl;
    //     for (int k = a; k <= b; k++)
    //     {
    //         auto it = find(v1.begin(), v1.end(), k);
    //         v1.erase(it);
    //     }
    // }
    // cout << v1.size() << endl;
    vector<bool> v1;
    int l, m;
    cin >> l >> m;
    for (int i = 0; i <= l; i++)
    {
        v1.emplace_back(true);
    }
    for (int j = 0; j < m; j++)
    {
        int a = 0;
        int b = 0;
        cin >> a >> b;
        for (int k = a; k <= b; k++)
        {
            v1[k] = false;
        }
    }
    int num = count(v1.begin(), v1.end(), true);
    cout << num << endl;
    return 0;
}
