import Foundation
let input = readLine()!
print(readLine()!.map{Int(String($0))!}.reduce(0,+))
