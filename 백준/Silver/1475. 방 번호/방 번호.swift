import Foundation

let N = readLine()!

// 6,9 모음은 %2 나머지 있으면 + 1 그거 아니면 그냥 /2 값이 최대 사용세트

var numberSet: [Character:Int] = ["0":0,"1":0,"2":0,"3":0,"4":0,"5":0,"6":0,"7":0,"8":0,"9":0]

for i in N {
    numberSet[i]! += 1
}

let temp6 = numberSet["6"]!
let temp9 = numberSet["9"]!

if (temp6 + temp9) % 2 == 1 {
    let newValue = (temp6 + temp9)/2 + 1
    numberSet["6"] = newValue
    numberSet["9"] = newValue
}else {
    let newValue = (temp6 + temp9)/2
    numberSet["6"] = newValue
    numberSet["9"] = newValue
}

var max = 0

for (_,v) in numberSet {
    if v > max {
        max = v
    }
}

print(max)
