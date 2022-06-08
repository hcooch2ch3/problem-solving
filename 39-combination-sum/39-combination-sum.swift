class Solution {
    var array: [Int] = []
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        array = candidates.sorted()
        var result: [[Int]] = []
        var current: [Int] = []
        find(target, &current, &result, 0)
        return result
    }
    
    func find(_ target: Int, _ current: inout [Int], _ result: inout [[Int]], _ start: Int) {
        if target < 0 {
            return
        } else if target == 0 {
            result.append(current)
            return
        } 
        
        for i in start..<array.count {
            current.append(array[i])
            find(target-array[i], &current, &result, i)    
            current.removeLast()
        }
    }
}