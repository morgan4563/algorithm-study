import Foundation

var input = readLine()!
let alpa = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]

for i in alpa {
    input = input.replacingOccurrences(of:i,with:"*")
}

print(input.count)