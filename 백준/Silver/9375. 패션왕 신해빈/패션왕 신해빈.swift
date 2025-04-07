import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    let count = Int(readLine()!)!
    var dict = [String: Int]()
    for _ in 0..<count {
        let input = readLine()!.split(separator: " ").map({String($0)})
        if let data = dict[input[1]] {
            dict[input[1]] = data + 1
        } else {
            dict[input[1]] = 1
        }
    }
    var array = [Int]()
    dict.forEach({array.append($0.value)})
    array = array.map({$0+1})
    let result = array.reduce(1, *) - 1
    
    print(result)
}