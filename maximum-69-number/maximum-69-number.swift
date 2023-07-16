class Solution {
    func maximum69Number (_ num: Int) -> Int {
        var maximum = num
        var numString = Array(String(num))

        for (i, char) in numString.enumerated() {
            if char == "6" {
                numString[i] = "9"
                if let tempMax = Int(String(numString)), tempMax > maximum {
                    maximum = tempMax
                }
                numString[i] = "6"
            }
        }

        return maximum
    }
}