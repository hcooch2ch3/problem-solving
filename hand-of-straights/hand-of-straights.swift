class Solution {
    func isNStraightHand(_ hand: [Int], _ groupSize: Int) -> Bool {
        if hand.count % groupSize != 0 {
            return false
        }
        var newHand = hand.sorted()
        while newHand.count > 0 {
            var lastNumber = newHand.first!
            var currentIndex = 1
            var indicesToRemove = [0]
            if indicesToRemove.count == groupSize {
                indicesToRemove.reversed().forEach {
                    newHand.remove(at: $0)
                }
                continue
            }
            while currentIndex < newHand.count {
                if lastNumber == newHand[currentIndex] {
                    currentIndex += 1
                    if currentIndex == newHand.count {
                        return false
                    }
                } else if lastNumber + 1 == newHand[currentIndex] {
                    lastNumber += 1
                    indicesToRemove.append(currentIndex)
                    if indicesToRemove.count == groupSize {
                        indicesToRemove.reversed().forEach {
                            newHand.remove(at: $0)
                        }
                        break
                    }
                    currentIndex += 1
                } else {
                    return false
                }
            }
        }
        return true
    }
}