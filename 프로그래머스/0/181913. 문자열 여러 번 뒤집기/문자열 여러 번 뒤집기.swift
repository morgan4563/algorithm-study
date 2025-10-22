import Foundation

func solution(_ my_string:String, _ queries:[[Int]]) -> String {
    var newString = Array(my_string)
    
    for q in queries {
        let (start, end) = (q[0], q[1])
        newString[start...end].reverse()   
    }
    
    return String(newString)
}