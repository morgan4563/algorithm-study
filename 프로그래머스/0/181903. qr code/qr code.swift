import Foundation

func solution(_ q:Int, _ r:Int, _ code:String) -> String {
    let codeArr = Array(code)
    let endIndex = code.count - 1
    var result = ""
    
    for i in 0...endIndex {
        if i % q == r {
            result.append(codeArr[i])
        } 
    }
    
    return result
}