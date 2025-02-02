import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}

var (H,M) = (input[0],input[1])

if M - 45 < 0 {
    H -= 1
    M = 60 + (M - 45)
} else {
    M -= 45
}

if H == -1 {
    H = 23
}

print(H, M)
