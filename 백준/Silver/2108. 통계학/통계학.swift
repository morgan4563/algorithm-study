import Foundation

let N = Int(readLine()!)!
var array = [Int]()

for _ in 0..<N {
    array.append(Int(readLine()!)!)
}
array.sort(by: <)

print(Int(round((Double(array.reduce(0, +)) / Double(array.count)))))
//산술평균

print(array[array.count/2])
//중앙값

var dict = [Int:Int]()
for i in 0..<N {
    if let _ = dict[array[i]] {
        dict[array[i]]! += 1
    }else {
        dict[array[i]] = 0
    }
}

let max = dict.values.max()
var array2 = dict.filter{$0.value == max}.keys.sorted(by: <)

print(array2.count == 1 ? array2[0]: array2[1])
//최빈값

print(array[array.count-1] - array[0])
//범위



