#include <bits/stdc++.h>

using namespace std;



int main()
{
    int n; cin>>n;
    string s;   cin>>s;
    int k;  cin>> k;
    k %=26;
    for(int i=0;i<n;i++){
        if(s[i]>='a' && s[i]<='z'){
            s[i]-='a';
            s[i] = (s[i]+k)%26 +'a';
        }
        else if(s[i]>='A' && s[i]<='Z'){
            s[i]-='A';
            s[i] = (s[i]+k)%26 +'A';
        }
        
        cout<<s[i];
    }

    return 0;
}
