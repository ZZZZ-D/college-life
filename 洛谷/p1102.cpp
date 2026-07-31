#include <bits/stdc++.h>
using namespace std;
#define ll long long
int main()
{
    // int n, c;
    // cin >> n >> c;
    // vector<int> v1(n);
    // for (int i = 0; i < n; i++)
    // {
    //     cin >> v1[i];
    // }
    // int num = 0;
    // for (int j = 0; j < n - 1; j++)
    // {
    //     for (int k = j + 1; k < n; k++)
    //     {
    //         if (abs(v1[j] - v1[k]) == c)
    //         {
    //             num++;
    //         }
    //     }
    // }
    // cout << num << endl;
    int n;
    ll c;
    cin >> n >> c;
    vector<ll> v1(n);
    map<ll, ll> m;
    for (int i = 0; i < n; i++)
    {
        cin >> v1[i];
        m[v1[i]]++;
    }
    ll num = 0;
    for (int i = 0; i < n; i++)
    {
        num += m[v1[i] + c];
    }
    cout << num << endl;
    return 0;
}