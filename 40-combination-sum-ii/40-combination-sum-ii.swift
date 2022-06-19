class Solution {
    var combinations: [[Int]] = []
    
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        let candidates = candidates.filter { $0 <= target }.sorted()
        find(0, [], candidates, target)
        return combinations
    }
    
    func find(_ i: Int, _ combination: [Int], _ candidates: [Int], _ target: Int) {
        if target == 0 {
            combinations.append(combination)
            return
        } else if target < 0 {
            return
        }
        for j in i..<candidates.count {
            if j > i && candidates[j] == candidates[j-1] {
                continue
            }
            find(j+1, combination + [candidates[j]], candidates, target - candidates[j])
        }
    }
}