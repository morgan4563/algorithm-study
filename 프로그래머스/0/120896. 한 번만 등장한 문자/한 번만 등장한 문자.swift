import Foundation

func solution(_ s:String) -> String {
    var result = ""
    
    for i in s {
        if s.firstIndex(of:i) == s.lastIndex(of:i) {
            result.append(i)
        }
    }
    
    return String(Array(result).sorted())
}