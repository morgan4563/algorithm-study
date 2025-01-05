import Foundation

let T = Int(readLine()!)!
var apt = [[Int]]()

var count = 1
var floor = [Int]()
for _ in 0..<14 {
    floor.append(count)
    count += 1
}
apt.append(floor)

for i in 1...14 {
    floor = [Int]()
    for j in 1...14 {
        if j == 1 {
            floor.append(1)
        } else if j == 2{
            floor.append(apt[i-1][0]+apt[i-1][1])
        } else {
            floor.append(floor[j-2]+apt[i-1][j-1])
        }
    }
    apt.append(floor)
}


for _ in 0..<T {
    let k = Int(readLine()!)!
    let n = Int(readLine()!)!

    print(apt[k][n-1])
}