let _ = Int(readLine()!)!

let arr = readLine()!.split(separator: " ").map { Int($0)! }
var newSet = Set(arr)

let x = Int(readLine()!)!

var result = 0

for e in arr {
    let key = x - e
    if newSet.contains(key) && key != e {
        newSet.remove(key)
        newSet.remove(e)
        result += 1
    }
}

print(result)