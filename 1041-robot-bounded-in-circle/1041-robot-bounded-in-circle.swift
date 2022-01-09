class Solution {
    typealias Position = (x: Int, y: Int)
    var position: Position = (x: 0, y: 0)
    var direction = 0
    let dx = [0, -1, 0, 1]
    let dy = [1, 0, -1, 0]
    var positions: Set<String> = ["0,0"]
    
    func isRobotBounded(_ instructions: String) -> Bool {
        while positions.count <= 10000 {
            excuteInstructions(instructions)
            let result = positions.insert("\(position.x),\(position.y)")
            if result.inserted == false {
                return true
            }
        }
        return false
    }
    
    func excuteInstructions(_ instructions: String) {
        for instruction in instructions {
            switch instruction {
                case "R":
                    direction -= 1
                    if direction < 0 {
                        direction = 3
                    }
                case "L":
                    direction += 1
                    if direction > 3 {
                        direction = 0
                    }
                default:
                    position.x += dx[direction]
                    position.y += dy[direction]
            }
        }
    }
}