class Solution {
    func intToRoman(_ num: Int) -> String {
        var result = ""
        var remainder = num
        if remainder >= 1000 {
            result += convert(&remainder, 1000, "M")
        }
        if remainder >= 900 {
            result += convert(&remainder, 900, "CM")
        } 
        if remainder >= 500 {
            result += convert(&remainder, 500, "D")
        } 
        if remainder >= 400 {
            result += convert(&remainder, 400, "CD")
        } 
        if remainder >= 100 {
            result += convert(&remainder, 100, "C")
        }
        if remainder >= 90 {
            result += convert(&remainder, 90, "XC")
        }
        if remainder >= 50 {
            result += convert(&remainder, 50, "L")
        }
        if remainder >= 40 {
            result += convert(&remainder, 40, "XL")
        }
        if remainder >= 10 {
            result += convert(&remainder, 10, "X")
        }
        if remainder >= 9 {
            result += convert(&remainder, 9, "IX")
        }
        if remainder >= 5 {
            result += convert(&remainder, 5, "V")
        }
        if remainder >= 4 {
            result += convert(&remainder, 4, "IV")
        }
        if remainder >= 1 {
            result += convert(&remainder, 1, "I")
        }
        
        return result
        
        
    }
    
    func convert(_ remainder: inout Int, _ divisor: Int, _ roman: String) -> String {
        let q = remainder / divisor
        remainder = remainder % divisor
        return String(repeating: roman, count: q)
    }
}