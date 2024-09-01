class Solution:
    def allPathsSourceTarget(self, graph: List[List[int]]) -> List[List[int]]:
        result = []
        for i in range(len(graph[0])):
            if graph[0][i] == len(graph)-1:
                result.append([0, graph[0][i]])
            else:
                self.go(graph, result, graph[0][i], [0, graph[0][i]])
        return result

    def go(self, graph, result, current_index, current_path):
        new_current_path = copy.deepcopy(current_path)
        if current_index == len(graph)-1:
            result.append(new_current_path)
            return

        if len(graph[current_index]) == 0:
            return

        for i in range(len(graph[current_index])):
            new_current_path.append(graph[current_index][i])
            self.go(graph, result, graph[current_index][i], new_current_path)
            new_current_path.remove(graph[current_index][i])