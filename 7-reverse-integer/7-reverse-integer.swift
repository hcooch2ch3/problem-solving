class Solution {
    func reverse(_ x: Int) -> Int {
        guard x != 0 else { return 0 }
        let isMinus = x < 0
        var x = x
        if isMinus {
            x *= -1
        }
        var result = 0
        var n = Int(log10(CGFloat(x)))
        while n >= 0 {
            result += (x % 10) * Int(pow(Double(10), Double(n)))
            n -= 1
            x /= 10
        } 
        if isMinus {
            result *= -1
        }
        guard result < Int32.max && result > Int32.min else { return 0 }
        return result
    }
}