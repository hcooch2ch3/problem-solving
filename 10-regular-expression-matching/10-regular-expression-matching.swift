class Solution {
    func isMatch(_ s: String, _ p: String) -> Bool {
        var dp = Array(repeating: Array(repeating: false, count: p.count + 1), count: s.count + 1)
        dp[0][0] = true
        for j in 1...p.count {
            let pIndex = p.index(p.startIndex, offsetBy: j-1)
            dp[0][j] = p[pIndex] == "*" ?  dp[0][j-2] : false
        }
        for i in 1...s.count {
            for j in 1...p.count {
                let sIndex = s.index(s.startIndex, offsetBy: i-1)
                let pIndex = p.index(p.startIndex, offsetBy: j-1)                
                if s[sIndex] != p[pIndex] && p[pIndex] != "*" && p[pIndex] != "." {
                    dp[i][j] = false
                } else if s[sIndex] == p[pIndex] || p[pIndex] == "." {
                    dp[i][j] = dp[i-1][j-1]
                } else {
                    let pIndex2 = p.index(p.startIndex, offsetBy: j-2)
                    var current = false
                    if s[sIndex] == p[pIndex2] ||  p[pIndex2] == "." {
                        current = current || dp[i-1][j]
                    }
                    current = current || dp[i][j-2]
                    dp[i][j] = current
                }
            }
        }
        return dp[s.count][p.count]
    }
}