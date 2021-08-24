class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var maxResult = 0
        var substring = ""
        for i in 0..<s.count {
            let c = String(s[s.index(s.startIndex, offsetBy:i)])
            for j in 0..<substring.count {
                let d = String(substring[substring.index(substring.startIndex, offsetBy:j)])
                if d == c {
                    if j == substring.count - 1 {
                        substring = ""
                    } else {
                        let range = substring.index(substring.startIndex, offsetBy:j+1)..<substring.endIndex
                        substring = String(substring[range])        
                    }
                    break
                }
            }
            substring += c
            if substring.count > maxResult {
                maxResult = substring.count
            }
        }
        return maxResult
    }
}