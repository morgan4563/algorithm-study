import Foundation

let M = 1234567891
let L = Int(readLine()!)!
let array = readLine()!.map{$0.asciiValue! - 96}
var result = 0


for i in 0..<L {
    var hash = 1
    hash *= Int(pow(31, Double(i)))%M
    result += (Int(array[i]) * hash)%M
}
print(result)