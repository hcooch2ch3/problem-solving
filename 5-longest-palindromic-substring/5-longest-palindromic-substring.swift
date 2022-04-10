class Solution {
    func longestPalindrome(_ s: String) -> String {
        return find(s)
    }

   func find(_ s: String) -> String {
        let newS = s.map { $0 }
        var longestPalindrome = ""
        for i in 0..<newS.count {
            var palindrome = [newS[i]]
            if palindrome.count > longestPalindrome.count {
                longestPalindrome = String(palindrome)
            }
            var leftPointer = i-1
            var rightPointer = i+1
            while leftPointer >= 0 || rightPointer < newS.count {
                if leftPointer >= 0 && rightPointer < newS.count && newS[leftPointer] == newS[rightPointer] {
                    palindrome.insert(newS[leftPointer], at: 0)
                    palindrome.append(newS[rightPointer])
                    leftPointer -= 1
                    rightPointer += 1
                } else {
                    break
                }
            }
            if palindrome.count > longestPalindrome.count {
                longestPalindrome = String(palindrome)
            }
            
            palindrome = []
            leftPointer = i
            rightPointer = i+1
            while leftPointer >= 0 || rightPointer < newS.count {
                if leftPointer >= 0 && rightPointer < newS.count && newS[leftPointer] == newS[rightPointer] {
                    palindrome.insert(newS[leftPointer], at: 0)
                    palindrome.append(newS[rightPointer])
                    leftPointer -= 1
                    rightPointer += 1
                } else {
                    break
                }
            }
            if palindrome.count > longestPalindrome.count {
                longestPalindrome = String(palindrome)
            }
        }
        return longestPalindrome
    }
}