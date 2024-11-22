class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
        ranking = {}
        for i in nums:
            if i in ranking:
                ranking[i] += 1
            else:
                ranking[i] = 1
        list_ranking = []
        for r in ranking:
            list_ranking.append((ranking[r], r))
        list_ranking.sort(key=lambda x: x[0], reverse=True)
        result = []
        for i in range(0, k):
            result.append(list_ranking[i][1])
        return result
