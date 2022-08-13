class Solution {
    func isBoomerang(_ points: [[Int]]) -> Bool {
        if Set(points).count < 3 {
            return false
        }
        let abSlope = Double(points[0][1] - points[1][1])/Double(points[0][0] - points[1][0])
        let bcSlope = Double(points[2][1] - points[1][1])/Double(points[2][0] - points[1][0])
        let acSlope = Double(points[2][1] - points[0][1])/Double(points[2][0] - points[0][0])
        let slopes = Set([abSlope, bcSlope, acSlope])
        if slopes.count < 3 {
            return false
        }
        return true
    }
}