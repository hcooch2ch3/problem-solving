class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n == 1 {
            return 1
        }
        var stairs = Array(repeating: 0, count: n)
        stairs[0] = 1
        stairs[1] = 2
        for i in 2..<n {
            stairs[i] = stairs[i-1] + stairs[i-2]
        }
        return stairs[n-1]
    }
}