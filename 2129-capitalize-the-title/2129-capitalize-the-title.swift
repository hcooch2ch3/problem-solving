class Solution {
    func capitalizeTitle(_ title: String) -> String {
        let titleWords = title.components(separatedBy: " ")
        var newTitle = ""
        
        for (index1, word) in titleWords.enumerated() {
            if word.count <= 2 {
                for character in word {
                    newTitle += String(character).lowercased
                }
            } else {
                for (index2, character) in word.enumerated() {
                    if index2 == 0 {
                        newTitle += String(character).capitalized
                    } else {
                        newTitle += String(character).lowercased
                    }
                }
            }
            
            if index1 != titleWords.count-1 {
                newTitle += " "    
            }
        }
        
        return newTitle
    }
}