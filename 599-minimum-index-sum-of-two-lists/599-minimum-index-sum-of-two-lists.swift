class Solution {
    func findRestaurant(_ list1: [String], _ list2: [String]) -> [String] {
        var list1_dictionary: [String: Int] = [:] 
        var list2_dictionary: [String: Int] = [:] 
        for i in 0..<list1.count {
            list1_dictionary[list1[i]] = i
        }
        for i in 0..<list2.count {
            list2_dictionary[list2[i]] = i
        }
        var minimumIndexSum = 2000
        var result: [String] = []
        for l in list1 {
            if let l1 = list1_dictionary[l], let l2 = list2_dictionary[l] {
                if l1 + l2 < minimumIndexSum {
                    result = [l]
                    minimumIndexSum = l1 + l2 
                } else if l1 + l2 == minimumIndexSum {
                    result.append(l)
                }
            }
        }
        return result
    }
}