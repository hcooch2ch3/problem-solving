class Solution {
    func calculate(_ s: String) -> Int {
        let s = Array(s).filter { $0 != " "}
        let operators: Set<Character> = ["+", "-", "(", ")"]
        var stack: [Int] = []
        var result = 0
        var sign = 1
        var number = 0
        
        for c in s {
            if !operators.contains(c) { // Numbers
                number = number * 10 + Int(String(c))!
                print(number)
            } else if c == "+" {
                result = result + sign * number
                sign = 1
                number = 0
            } else if c == "-" {
                result = result + sign * number
                sign = -1
                number = 0
            } else if c == "(" {
                stack.append(result)
                stack.append(sign)
                sign = 1
                result = 0
            } else {
                result = result + number * sign
                guard let lastSign = stack.popLast() else { continue }
                guard let lastNumber = stack.popLast() else { continue }
                number = 0
                result *= lastSign 
                result += lastNumber
            }
        }
        result = result + sign * number
        return result
    }
}