import Foundation

let input1 = readLine()!.split(separator: " ").map { Int($0)! }
let hour = input1[0]
let minute = input1[1]

let input2 = Int(readLine()!)!

let totalM = hour * 60 + minute + input2

let newH = (totalM / 60) % 24
let newM = totalM % 60

print("\(newH) \(newM)")