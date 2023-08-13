class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var max = 0
        var maxPrices = Array(repeating:0, count:prices.count)
        for i in (0..<prices.count).reversed() {
            if max < prices[i] {
                max = prices[i]
            }
            maxPrices[i] = max
        }
        var max2 = 0
        for i in (0..<prices.count) {
            if maxPrices[i] - prices[i] > max2 {
                max2 = maxPrices[i] - prices[i]
            }
        }
        return max2
    }
}