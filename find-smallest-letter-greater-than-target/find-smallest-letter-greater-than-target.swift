class Solution {
    func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
        for l in letters {
            if l > target {
                return l
            }
        }
        return letters.first!
    }
}