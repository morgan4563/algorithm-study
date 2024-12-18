import Foundation

let N = Int(readLine()!)!
let participantArray = readLine()!.split(separator:" ").compactMap{Int($0)!}.sorted(by: >)
let bundle = readLine()!.split(separator:" ").compactMap{Int($0)!}
let (T,P) = (bundle[0],bundle[1])

var orderTBundle = 0
var orderPBundle = 0
var orderPSingle = 0

for i in participantArray {
    orderTBundle += i/T
    if i%T != 0 {
        orderTBundle += 1
    }
}

orderPBundle = N/P
orderPSingle = N%P

print(orderTBundle)
print("\(orderPBundle) \(orderPSingle)")