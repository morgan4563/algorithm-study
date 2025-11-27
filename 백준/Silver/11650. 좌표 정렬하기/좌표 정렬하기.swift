let count = Int(readLine()!)!
var arr = [(Int,Int)]()
for _ in 0..<count {
    let input = readLine()!.split(separator: " ").map {Int($0)!}
    let t = (input[0],input[1])
    arr.append(t)
}

arr.sort {
    if $0.0 == $1.0 {
        return $0.1 < $1.1
    } else {
        return $0 < $1
    }
}

arr.forEach {
    print("\($0.0) \($0.1)")
}