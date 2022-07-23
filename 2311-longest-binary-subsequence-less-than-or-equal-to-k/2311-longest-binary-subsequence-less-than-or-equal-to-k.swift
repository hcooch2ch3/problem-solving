class Solution {
    func longestSubsequence(_ s: String, _ k: Int) -> Int {
        let k = CGFloat(k)
        let charS = Array(s)
        var maxLength = 0
        var sum: CGFloat = 0
        for i in (0..<charS.count).reversed() {
            if charS[i] == "0" {
                maxLength += 1
            } else {
                let n = charS.count - i - 1
                print(n)
                let s = pow(2.0, Double(n))
                if sum + s <= k {
                    maxLength += 1
                    sum += s
                }
            }
        }
        return maxLength
    }
}