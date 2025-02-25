import Foundation

var N = Int(readLine()!)!

var array = [(Int,Int)]()

for _ in 0..<N {
    let data = readLine()!.split(separator: " ").map{Int($0)!}
    let arrayData = (data[0],data[1])
    
    array.append(arrayData)
}

array.sort { $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 < $1.1 }

array.forEach { data in
    print("\(data.0) \(data.1)")
}
