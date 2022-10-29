class Solution {
    func removeDuplicateLetters(_ s: String) -> String {
        var lastIndex: [Character: Int] = [:]
        var visited: Set<Character> = Set<Character>()
        var stack: [Character] = []
        let s = Array(s)
        for i in 0..<s.count {
            lastIndex[s[i]] = i
        }
        for i in 0..<s.count {
            if !visited.contains(s[i]) {
                while stack.count > 0 && stack.last! > s[i] && lastIndex[stack.last!]! > i {
                    visited.remove(stack.popLast()!)
                }
                stack.append(s[i])
                visited.insert(s[i])
            }
        }
        return String(stack)
    }
    
    
}

// 1<= s.length <= 10000
// 알파벳 마다 인덱스를 모아놓고
// 알파벳 작은거 부터 루프를 돌면서 가장 인덱스가 작은것를 추가하기    
// 문제점 - 큰 알파벳ㅇ