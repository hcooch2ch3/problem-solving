
class SmallestInfiniteSet {
    var set: Set<Int> = []

    init() {
        for i in 1...1000 {
            set.insert(i)
        }
    }
    
    func popSmallest() -> Int {
        let min = set.min()!
        set.remove(min)
        return min 
    }
    
    func addBack(_ num: Int) {
        set.insert(num)
    }
}

/**
 * Your SmallestInfiniteSet object will be instantiated and called as such:
 * let obj = SmallestInfiniteSet()
 * let ret_1: Int = obj.popSmallest()
 * obj.addBack(num)
 */