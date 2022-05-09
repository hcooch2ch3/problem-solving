class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        let newStrs = strs.map { Array($0) }
        if newStrs[0].count == 0 { return "" }
        var i = 0
        var j = 0
        var result = ""
        var char: Character?

        while true {
            if newStrs[i].count-1 < j { 
                break
            }
            if let char = char {
                if char != newStrs[i][j] {
                    break
                }
            } else {
                char = newStrs[i][j]
            }
            i += 1
            if i == newStrs.count {
                i = 0
                j += 1
                if let char = char {
                    result += String(char)
                }
                char = nil
            } 
        }
        return result
    }
}