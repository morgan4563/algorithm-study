let input = readLine()!.split(separator: " ").map {Int($0)!}
let (N, X) = (input[0], input[1])

let arr = readLine()!.split(separator: " ").map {Int($0)!}
var visCountArr = [Int]()

var currentValue = 0
for i in 0..<X {
    currentValue += arr[i]
    visCountArr.append(currentValue)
}

for i in 0..<N-X {
    currentValue = currentValue - arr[i] + arr[i+X]
    visCountArr.append(currentValue)
}

visCountArr.sort(by: >)
let maxValue = visCountArr[0]
var result = 0
if maxValue == 0 {
    print("SAD")
} else {
    for i in visCountArr {
        if i == maxValue {
            result += 1
        } else {
            break
        }
    }
    print(maxValue)
    print(result)
}