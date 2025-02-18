// solution 1 with built in functions
class Solution {
  bool isPalindrome(int x) {
    String a=x.toString();
    String b=x.toString().split('').reversed.join();

    return a==b;
  }
}

// solution 2 with two pointer algorithm
class Solution2 {
  bool isPalindrome(int x) {
    if(x<0) return false;   // edge case
    
    List<int> arr=[];
    while(x!=0){
        arr.add(x%10);
        x =x~/10;
    }

    int l=0 ,r=arr.length-1;
    bool ans=true;
    while(l<r){
        if(arr[l++] != arr[r--]){
            ans=false;
            break;
        }
    }

    return ans;
  }
}