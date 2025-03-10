import Foundation

var input = readLine()!.map{Int(String($0))!}

var result = input.sorted(by: >).map{String($0)}.joined()

print(result)