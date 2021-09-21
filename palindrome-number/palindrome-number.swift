class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }
        var stringX = String(x)
        for i in 0..<stringX.count/2 {
            let firstIndex = stringX.index(stringX.startIndex, offsetBy: i)
            let lastIndex = stringX.index(stringX.startIndex, offsetBy: (stringX.count-1) - i)
            if stringX[firstIndex] != stringX[lastIndex] {
                return false
            }
        }
        return true
    }
}