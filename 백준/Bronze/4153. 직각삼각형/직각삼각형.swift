while true {
    let input = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
    let (a,b,c) = (input[0],input[1],input[2])
    if a == 0 && b == 0 && c == c {
        break
    }
    a*a+b*b == c*c ? print("right") : print("wrong")
}