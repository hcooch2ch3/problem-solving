class Solution {
    func maxIceCream(_ costs: [Int], _ coins: Int) -> Int {
        let costs = costs.sorted()
        var totalPrice = 0
        var count = 0
        for c in costs {
            if c + totalPrice <= coins {
                totalPrice += c
                count += 1
            } else {
                break
            }
        }
        return count
    }
}