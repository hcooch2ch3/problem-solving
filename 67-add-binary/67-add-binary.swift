class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var a = Array(a)
        var b = Array(b)
        a.reverse()
        b.reverse()
        let maxLength = max(a.count, b.count)
        while maxLength > a.count {
            a.append("0")    
        }
        while maxLength > b.count {
            b.append("0")    
        }
        var result: [Character] = []
        var temp = "0"
        for i in 0..<maxLength {
            if a[i] == "1" && b[i] == "1" {
                if temp == "1" {
                    result.append("1")
                } else {
                    result.append("0")
                }
                temp = "1"
            } else if a[i] == "1" || b[i] == "1" {
                if temp == "1" {
                    result.append("0")
                    temp = "1"
                } else {
                    result.append("1")
                    temp = "0"
                }
            } else {
                if temp == "1" {
                    result.append("1")
                } else {
                    result.append("0")
                }
                temp = "0"
            }   
        }
        if temp == "1" {
            result.append("1")
        }
        result.reverse()
        return String(result)
    }
}