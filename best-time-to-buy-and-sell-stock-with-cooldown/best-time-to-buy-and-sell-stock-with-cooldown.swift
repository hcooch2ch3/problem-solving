class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var inHand = 0
        var noStock = 0
        var sold = 0
        inHand -= prices[0];
        for i in 1..<prices.count {
            let stock = max(noStock, sold)
            let hand = max(noStock - prices[i], inHand)
            let sol = max(inHand + prices[i], sold)
            noStock = stock
            inHand = hand
            sold = sol
        }
        return max(noStock, sold)
    }
}