import Foundation

func solution(_ my_string:String, _ s:Int, _ e:Int) -> String {
    var myString = Array(my_string).map {String($0)}
    var start = s
    var end = e
    
    while start < end {
        let temp = myString[start]
        myString[start] = myString[end]
        myString[end] = temp
        
        start += 1
        end -= 1
    }
    
    return myString.joined()
}