class Solution {
    func romanToInt(_ s: String) -> Int {
        var result = 0
        var isPass = false
        for i in 0..<s.count {
            if isPass {
                isPass = false
                continue
            }
            let index = s.index(s.startIndex, offsetBy:i)
            let nextIndex = i + 1 < s.count ? s.index(s.startIndex, offsetBy:i + 1) : nil
            if s[index] == "I" {
                if let nextIndex = nextIndex {
                    if s[nextIndex] == "V" {
                        result += 4
                        isPass = true
                    } else if s[nextIndex] == "X" {
                        result += 9
                        isPass = true
                    } else {
                        result += 1
                    }
                } else {
                    result += 1
                }
            } else if s[index] == "V" {
                result += 5
            } else if s[index] == "X" {
                if let nextIndex = nextIndex {
                    if s[nextIndex] == "L" {
                        result += 40
                        isPass = true
                    } else if s[nextIndex] == "C" {
                        result += 90
                        isPass = true
                    } else {
                        result += 10
                    }
                } else {
                    result += 10
                }
            } else if s[index] == "L" {
                result += 50
            } else if s[index] == "C" {
                if let nextIndex = nextIndex {
                    if s[nextIndex] == "D" {
                        result += 400
                        isPass = true
                    } else if s[nextIndex] == "M" {
                        result += 900
                        isPass = true
                    } else {
                        result += 100
                    }
                } else {
                    result += 100
                }
            } else if s[index] == "D" {
                result += 500
            } else {
                result += 1000
            }
        }
        return result
    }
}