let input = Array(readLine()!).map { String($0) }
let input2 = Array(readLine()!).map { String($0) }

// 딕셔너리 1번은 A-Z까지 카운트 증가시킴
// 딕셔너리 2번은 A-Z까지 카운트 증가시킴
// 딕셔너리 A부터 Z까지 각각 숫자 비교, 2번-1번으로 나온 값을 전부 더해서 리턴

var dic1: [String: Int] = ["a":0,"b":0,"c":0,"d":0,"e":0,"f":0,"g":0,"h":0,"i":0,"j":0,"k":0,"l":0,"m":0,"n":0,"o":0,"p":0,"q":0,"r":0,"s":0,"t":0,"u":0,"v":0,"w":0,"x":0,"y":0,"z":0]
var dic2: [String: Int] = ["a":0,"b":0,"c":0,"d":0,"e":0,"f":0,"g":0,"h":0,"i":0,"j":0,"k":0,"l":0,"m":0,"n":0,"o":0,"p":0,"q":0,"r":0,"s":0,"t":0,"u":0,"v":0,"w":0,"x":0,"y":0,"z":0]

for i in input {
    dic1[i]! += 1
}
for j in input2 {
    dic2[j]! += 1
}

var result = 0

let alpa = ["a","b","c","d","e","f","g","h","i","j",
            "k","l","m","n","o","p","q","r","s","t",
            "u","v","w","x","y","z"]

for i in alpa {
    result += abs(dic2[i]! - dic1[i]!)
}

print(result)