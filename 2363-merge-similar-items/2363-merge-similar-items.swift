class Solution {
    func mergeSimilarItems(_ items1: [[Int]], _ items2: [[Int]]) -> [[Int]] {
        var sumOfWeights = items1
        for i in 0..<items2.count {
            var isInSumOfWeights = false
            for j in 0..<sumOfWeights.count {
                if sumOfWeights[j][0] == items2[i][0] {
                    sumOfWeights[j][1] += items2[i][1]
                    isInSumOfWeights = true
                    break
                }
            }
            if !isInSumOfWeights {
                sumOfWeights.append(items2[i])
            }
        }
        sumOfWeights.sort {
            $0[0] < $1[0]
        }
        return sumOfWeights
    }
}