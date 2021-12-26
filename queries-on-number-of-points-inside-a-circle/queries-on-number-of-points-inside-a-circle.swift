class Solution {
    func countPoints(_ points: [[Int]], _ queries: [[Int]]) -> [Int] {
        var results: [Int] = []
        for i in queries.indices {
            var result = 0
            for j in points.indices {
                if isPointIncluded(in: queries[i], points[j]) {
                    result += 1
                }
            }
            results.append(result)
        }
        return results
    }
    
    func isPointIncluded(in circle: [Int], _ point: [Int] ) -> Bool {
        let circleX = circle[0]
        let circleY = circle[1]
        let circleRadius = circle[2]
        let pointX = point[0]
        let pointY = point[1]
        
        if Int(pow(Double(pointX - circleX), 2.0)) + Int(pow(Double(pointY - circleY), 2.0)) <= Int(pow(Double(circleRadius), 2.0)) {
        return true
        }
        return false
    }
}