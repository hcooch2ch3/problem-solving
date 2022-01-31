class Solution {
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        var result: [[Int]] = []
        func find(_ index: Int, _ combination: [Int]) {
            if combination.count == k {
                result.append(combination)
                return
            }
            guard index <= n else {
                return
            }
            
            for i in index...n {
                var newCombination = combination
                newCombination.append(i)
                find(i+1, newCombination)
            }
        }
        find(1, [])
        return result
    }
}