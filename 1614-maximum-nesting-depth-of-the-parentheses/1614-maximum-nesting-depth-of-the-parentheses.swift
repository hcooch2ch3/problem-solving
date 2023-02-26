class Solution {
    func maxDepth(_ s: String) -> Int {
        var stack: [Character] = []
        var max = 0
        for c in s {
            if c == "(" {
                stack.append(c)
                if stack.count > max {
                    max = stack.count
                }
            } else if c == ")" {
                stack.popLast()
            }
        }
        return max
    }
}