class Solution {
    func checkPerfectNumber(_ num: Int) -> Bool {
        var divisors: [Int] = []
        for i in 1..<num {
            if num % i == 0 {
                divisors.append(i)
            }
        }
        return divisors.reduce(0, +) == num
    }
}