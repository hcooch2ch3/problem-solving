class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var newDigits = digits
        if let last = digits.last, last == 9 {
            for i in (0...newDigits.count-1).reversed() {
                if newDigits[i] == 9 {
                    newDigits[i] = 0
                    if i == 0 {
                        newDigits.insert(1, at: 0)
                    }
                } else {
                    newDigits[i] += 1
                    break
                }
            }
            return newDigits
        } else {
            newDigits[newDigits.count-1] += 1
            return newDigits
        }
    }
}