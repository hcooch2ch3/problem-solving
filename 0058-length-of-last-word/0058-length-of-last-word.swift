class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let words = s.components(separatedBy: " ").filter { $0 != ""}
        if let lastWord = words.last {
            return lastWord.count
        }  
        return 0
    }
}