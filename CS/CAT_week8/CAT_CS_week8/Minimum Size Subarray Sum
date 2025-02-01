class Solution {
public:
    int minSubArrayLen(int target, vector<int>& nums) {
        int out = INT_MAX;
        int left = 0, right = 0, sum = 0;
        while (right < nums.size()) {
            sum += nums[right++];
            while (sum >= target) {
                out = min(out, right - left);
                sum -= nums[left++];
            }
        }
        return (out == INT_MAX) ? 0 : out;
    }
};
