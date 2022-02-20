class Solution {
    func myAtoi(_ s: String) -> Int {
        var noWhitespaceS: [Character] = []
        for c in s {
            if c == " " {
                if noWhitespaceS.count > 0 {
                    break
                } else {
                    continue
                }
            } 
            noWhitespaceS.append(c)
        }
        
        var direction = 1
        if let first = noWhitespaceS.first {
            if first == "+" {
                noWhitespaceS.removeFirst()
            } else if first == "-" {
                direction = -1
                noWhitespaceS.removeFirst()   
            } else if !(first.asciiValue! >= 48 && first.asciiValue! <= 57) {
                return 0
            }
        }
        
        var digits: [Character] = []
        for c in noWhitespaceS {
            if let asciiValue = c.asciiValue {
                if asciiValue >= 48 && asciiValue <= 57 {
                    digits.append(c)
                } else {
                    break
                }
            }
        }
        guard let r = Int(String(digits)) else {
            if digits.count == 0 {
                return 0
            } else {
                if direction > 0 {
                    return Int(Int32.max)
                } else {
                    return Int(Int32.min)
                }
            }
        }
        var result = r * direction
        if result > Int(Int32.max) {
            result = Int(Int32.max)
        } else if result < Int(Int32.min) {
            result = Int(Int32.min)
        }
        return result
    }
}