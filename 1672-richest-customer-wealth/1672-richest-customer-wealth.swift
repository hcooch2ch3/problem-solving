class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        let sums = accounts.map {
            $0.reduce(0) {
                $0 + $1
            }
        }
        return sums.max()!
    }
}