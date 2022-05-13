class Solution {
    func isValid(_ s: String) -> Bool {
        var stack: [Character] = []
        for c in s {
            if c == "(" || c == "{" || c == "[" {
                stack.append(c)
            } else {
                guard let last = stack.popLast() else { return false }
                switch c {
                case ")":
                    if last != "(" { return false }
                case "}":
                    if last != "{" { return false }
                case "]":
                    if last != "[" { return false }
                default: return false
                }
            }
        }
        guard stack.count == 0 else { return false } 
        return true
    }
}