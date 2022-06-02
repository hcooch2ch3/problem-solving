class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        guard n != 0 else { return 1 }
        var memoization: [Double] = Array(repeating: x, count: 10)
        var result: Double = 1.0
        for i in 1..<10 {
            memoization[i] = memoization[i-1] * x
        }
        if abs(n) <= 10 {
            result = memoization[abs(n)-1]    
        } else {
            for _ in 0..<abs(n)/10 {
                result *= memoization[9]
            }
            if abs(n)%10 != 0 {
                result *= memoization[abs(n)%10-1]
            }
        }
        
        if n > 0 {
            return result    
        } else {
            return 1/result
        }
    }
}