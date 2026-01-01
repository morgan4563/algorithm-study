var input = readLine()!.split(separator: " ").map{Int($0)!}
var input2 = readLine()!.split(separator: " ").map{Int($0)!}

var N = input[0]
var K = input[1]

var maxTemperature = 0
var acc = 0

for i in 0..<K {
    acc += input2[i]
}

maxTemperature = acc

for i in 0..<N-K {
    acc = acc - input2[i] + input2[K+i]
    if maxTemperature < acc {
        maxTemperature = acc
    }
}

print(maxTemperature)

