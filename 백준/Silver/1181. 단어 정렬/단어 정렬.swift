let count = Int(readLine()!)!
var words = Set<String>()
for _ in 0..<count {
    words.insert(readLine()!)
}

words.sorted {
    if $0.count == $1.count {
        return $0 < $1
    } else {
        return $0.count < $1.count
    }
}.forEach {
    print($0)
}