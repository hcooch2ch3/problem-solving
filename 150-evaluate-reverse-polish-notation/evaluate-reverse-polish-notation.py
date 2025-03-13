class Solution:
    def evalRPN(self, tokens: List[str]) -> int:
        stack = []
        for t in tokens:
            if t == "+":
                right = int(stack.pop())
                left = int(stack.pop())
                result = left + right
                stack.append(result)
            elif t == "-":
                right = int(stack.pop())
                left = int(stack.pop())
                result = left - right
                stack.append(result)
            elif t == "*":
                right = int(stack.pop())
                left = int(stack.pop())
                result = left * right
                stack.append(result)
            elif t == "/":
                right = int(stack.pop())
                left = int(stack.pop())
                result = left / right
                stack.append(result)
            else: # 숫자일 경우
                stack.append(t)
        return stack[-1] if type(stack[-1]) is int else int(stack[-1])