class Solution:
    def fractionToDecimal(self, numerator: int, denominator: int) -> str:
        if numerator == 0:
            return "0"
    
        result = []
        
        if (numerator < 0) ^ (denominator < 0):
            result.append("-")
        
        numerator, denominator = abs(numerator), abs(denominator)
        
        quotient, remainder = divmod(numerator, denominator)
        result.append(str(quotient))
        
        if remainder == 0:
            return "".join(result)
        
        result.append(".")
        
        remainder_map = {}
        
        while remainder != 0:
            if remainder in remainder_map:
                result.insert(remainder_map[remainder], "(")
                result.append(")")
                break
            
            remainder_map[remainder] = len(result)
            remainder *= 10
            quotient, remainder = divmod(remainder, denominator)
            result.append(str(quotient))
        
        return "".join(result)