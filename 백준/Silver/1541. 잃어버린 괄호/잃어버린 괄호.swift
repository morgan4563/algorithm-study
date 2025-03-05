import Foundation

var input = readLine()!
var temp = ""
var IntTemp = [Int]()
var minusFlag = false
var result = 0

for i in input {
    if i.isNumber {
        temp.append(i)
        continue
    } else {
        //기호일경우 일단 + 라고 하면
        //minusflag 안 열려있으면
        //temp에 있는 문자 인트로 변형해서 리저트에 플러스
        if i == "+" && !minusFlag {
            result += Int(temp)!
            temp = ""
        }
        //기호 + 인데 minusFlag 열려있으면 인트템프에 장전
        if i == "+" && minusFlag {
            IntTemp.append(Int(temp)!)
            temp = ""
        }
        //기호 -인데 마이너스플래그 안열린거면 열어주고 끝
        if i == "-" && !minusFlag {
            result += Int(temp)!
            temp = ""
            minusFlag = true
            continue
        }
        // 기호 - 인데 마이너스플래그 열렸으면 이전에 마이너스 이미 나와있는 상황
        // 이전 템프 내용 전부 리저트에 마이너스, 인트템프 초기화
        if i == "-" && minusFlag {
            IntTemp.append(Int(temp)!)
            temp = ""
            for j in IntTemp {
                result -= Int(String(j))!
                IntTemp = [Int]()
            }
        }
    }
}

if !minusFlag {
    result += Int(temp)!
} else {
    IntTemp.append(Int(temp)!)
    for i in IntTemp {
        result -= Int(String(i))!
    }
}

print(result)
