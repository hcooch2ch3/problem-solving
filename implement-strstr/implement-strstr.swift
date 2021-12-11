class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard haystack.count >= needle.count else {
            return -1
        }
        if haystack == needle || needle == "" {
            return 0
        }
        let haystackArray = Array(haystack)
        let needleArray = Array(needle)
        var haystackWindow = Array(haystackArray[0..<needle.count])
        if haystackWindow == needleArray {
            return 0
        }
        for i in needleArray.count..<haystackArray.count {
            haystackWindow.removeFirst()
            haystackWindow.append(haystackArray[i])
            if haystackWindow == needleArray {
                return i - (haystackWindow.count-1)
            }
        }
        return -1
    }
}