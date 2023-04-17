class Solution {
    func subtractProductAndSum(_ n: Int) -> Int {
        var n = n
        var product = 1
        var sum = 0
        while n > 0 {
            let number = n % 10 
            product *= number
            sum += number
            n /= 10
        }
        return product - sum
    }
}