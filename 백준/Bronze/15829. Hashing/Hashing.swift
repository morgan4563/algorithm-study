import Foundation

let M = 1234567891
let L = Int(readLine()!)!
let array = readLine()!.map{$0.asciiValue! - 96}
var result = 0


for i in 0..<L {
    var hash = 1
    
    for j in 0...i {
        if j == 0 {
            continue
        } else {
            hash = (hash * 31)%M
        }
    }
    
    result = (result + (Int(array[i]) * hash))%M
}
print(result)
