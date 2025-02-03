import Foundation

let T = Int(readLine()!)!
var result = ""
for _ in 0..<T {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    var (H,W,C) = (input[0],input[1],input[2])
    
    for i in 0..<W {
        for j in 0..<H {
            C -= 1
            if C == 0 {
                if i < 9 {
                    result.append("\(j+1)0\(i+1)\n")
                }else {
                    result.append("\(j+1)\(i+1)\n")
                }
            }
        }
    }
}
print(result)
