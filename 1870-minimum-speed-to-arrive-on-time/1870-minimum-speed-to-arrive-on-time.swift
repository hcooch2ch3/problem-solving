class Solution {
    func minSpeedOnTime(_ dist: [Int], _ hour: Double) -> Int {
        let maxSpeed = 100000000
        let minSpeed = 1
        var check = Set<Int>()
        var result: Int = Int.max
        var maxSpeedTime: Double = getTime(maxSpeed, dist)
        if maxSpeedTime > hour {
            return -1
        } else if maxSpeedTime < hour {
            result = maxSpeed
        }
        
        // 최소 속도 = dist에서 가장 작은 값 또는 1 (?)
        // 최고 속도 = dist에서 가장 큰 값
        // 현재 속도로 갔을때 제한된 시간을 초과했을 경우 -> 속도를 늘린다.
        // 현재 속도로 갔을때 제한된 시간보다 빨리 도착했을 경우 -> 속도를 줄인다.
        search(minSpeed, maxSpeed, dist, hour, &result, &check)
        if result == Int.max {
            return -1
        }
        return result
    }
    
    func search(_ left: Int, _ right: Int, _ dist: [Int], _ hour: Double, _ minSpeed: inout Int, _ check: inout Set<Int>) {
        let half = (left + right) / 2
        if check.contains(half) {
            return
        }
        check.insert(half)
        var sumCurrentHour: Double = getTime(half, dist)
        if sumCurrentHour <= hour {
            if half < minSpeed {
                minSpeed = half
            }
            search(left, half, dist, hour, &minSpeed, &check)
        } else {
            search(half, right, dist, hour, &minSpeed, &check)
        }
    }
    
    func getTime(_ speed: Int, _ dist: [Int]) -> Double {
        var sumCurrentHour: Double = 0
        for i in 0..<dist.count {
            let currentHour = Double(dist[i]) / Double(speed)
            if i == dist.count-1 {
                sumCurrentHour += currentHour
                continue
            }
            sumCurrentHour += ceil(currentHour)
        }
        return sumCurrentHour
    }
}