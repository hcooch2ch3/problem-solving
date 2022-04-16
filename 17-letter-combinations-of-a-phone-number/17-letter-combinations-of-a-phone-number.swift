class Solution {
    let dict = ["2": ["a", "b", "c"], "3": ["d", "e", "f"], "4": ["g", "h", "i"], "5": ["j", "k", "l"], "6": ["m", "n", "o"], "7": ["p", "q", "r", "s"], "8": ["t", "u", "v"], "9": ["w", "x", "y", "z"]]
    var result: [String] = []
    
    func letterCombinations(_ digits: String) -> [String] {
        find("", 0, digits)
        return result
    }
    
    func find(_ current: String, _ index: Int, _ digits: String) {
        if index == digits.count {
            if current.count > 0 {
                result.append(current)
            }
            return
        }
        let letters = dict[String(Array(digits)[index])]!
        for letter in letters {
            let newCombinations = current + String(letter)
            find(newCombinations, index+1, digits)
        }
    }
 }