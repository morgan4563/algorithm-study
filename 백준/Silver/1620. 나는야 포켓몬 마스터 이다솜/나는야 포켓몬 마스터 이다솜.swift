import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }

var dic1 = [String:Int]()
var dic2 = [Int:String]()

for i in 1...input[0] {
    let name = readLine()!
    dic1[name] = i
    dic2[i] = name
}

var result = [String]()

for _ in 1...input[1] {
    let search = readLine()!
    if let intData = Int(search) {
        result.append(String(dic2[intData]!))
    } else {
        result.append(String(dic1[search]!))
    }
}

result.forEach { String in
    print(String)
}
