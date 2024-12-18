import Foundation

let numbers = readLine()!.split(separator:" ").compactMap{Int($0)!}

func G(_ a:Int,_ b:Int) -> Int {
    var a = a
    var b = b
    while b != 0 {
        let temp = b
        b = a%b
        a = temp
    }
    return a
}

let g = G(numbers[0],numbers[1])
print(g)
print(numbers[0]*numbers[1]/g)