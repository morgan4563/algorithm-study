import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (N,K) = (input[0],input[1])

func factorial(_ a: Int) -> Int {
    if a == 0 || a == 1 {
        return 1
    }
    var result = a
    
    result = result * factorial(a-1)
    return result
}

let result = factorial(N)/(factorial(K)*factorial(N-K))

print(result)