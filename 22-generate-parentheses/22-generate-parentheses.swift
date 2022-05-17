class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        var allCases: [[Character]] = []
        let c = Character(")")
        let a = Array(repeating: c, count: n*2)
        findAll(&allCases, a, 0, n, 0)
        let filteredCases = allCases.filter { isValid($0) }
        return filteredCases.map { String($0) }
    }
    
    func findAll(_ allCases: inout [[Character]], _ a: [Character], _ m: Int, _ n: Int, _ k: Int) {
        if m == n {
            allCases.append(a)
            return
        }
        for i in k..<n*2 {
            var newA = a
            newA[i] = "("
            findAll(&allCases, newA, m+1, n, i+1)
        }
    }
    
    func isValid(_ s: [Character]) -> Bool {
        var stack: [Character] = []
        
        for c in s {
            if c == "(" {
                stack.append(c)
            } else {
                if let last = stack.popLast() {
                   continue 
                } else {
                    return false
                }
            }
        }
        return stack.isEmpty
    }
}