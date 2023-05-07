class Solution {
    func sumZero(_ n: Int) -> [Int] {
        if n == 1 {
            return [0]
        }
        var result: [Int] = []
        for i in 1...n/2 {
            result.append(i)
            result.append(-i)
        }
        if n % 2 == 1 {
            result.append(0)
        }
        return result        
    }
}