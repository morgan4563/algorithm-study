import Foundation

let input = readLine()!.split(separator: " ").map({Int($0)!})

let (N,M) = (input[0],input[1])

var array = [[Int]]()

for _ in 0..<N {
    array.append(readLine()!.split(separator: " ").map({Int($0)!}))
}


let input2 = Int(readLine()!)!

for _ in 0..<input2 {
	let input3 = readLine()!.split(separator: " ").map({Int($0)!})

    var result = 0

    for i in input3[0]-1...input3[2]-1 {
        for j in input3[1]-1...input3[3]-1 {
			result += array[i][j]
        }
    }
    print(result)
}
