class Solution:
    def merge(self, intervals: List[List[int]]) -> List[List[int]]:
        current = 0
        intervals.sort(key=lambda x: x[0])
        while current < len(intervals) - 1:
            if intervals[current][1] >= intervals[current+1][0]:
                intervals[current+1][0] = intervals[current][0]
                if intervals[current+1][1] < intervals[current][1]:
                    intervals[current+1][1] = intervals[current][1]
                del intervals[current]
            else:
                current += 1
        return intervals
            