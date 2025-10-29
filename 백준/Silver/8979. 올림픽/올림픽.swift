import Foundation
// 올림픽 8979
// 조건, 금 은 동
// 금 같으면 은으로 비교
// 은 같으면 동으로 비교
// 다같으면 등수 같음, 1, 2, 2, 4 이런식

// 금은동 입력 받아서 어느국가 몇등인지
let input = readLine()!.split(separator: " ").map { Int($0)! }
// 첫 줄 입력 국가의 수, 등수를 알고싶은 국가
let (N,K) = (input[0], input[1])
// 그 다음줄 부터 국가코드, 금, 은, 동 입력받음
var result = [[Int]]()
for _ in 0..<N {
    let input2 = readLine()!.split(separator: " ").map { Int($0)! }
    result.append(input2)
}
// 이는 N까지 진행됨
// 결과는 이 나라의 등수 나타냄

// sort 금, 같으면 은, 같으면 동
result.sort {
    ($0[1], $0[2], $0[3]) > ($1[1], $1[2], $1[3])
}
// 하나 등수 표기할때마다 순위 카운트는 증가
// 3개가 다 같은 경우?, 이전과 비교, 이전이랑 같으면 등수 추가 안함
var resultDictionary = [Int:Int]()
var temp = [Int]()
var count = 1
var check = 1
for e in result {
    if temp.isEmpty {
        resultDictionary[e[0]] = count
        check += 1
    } else {
        if (temp[1],temp[2],temp[3]) == (e[1],e[2],e[3]) {
            resultDictionary[e[0]] = count
            check += 1
        } else {
            count = check
            resultDictionary[e[0]] = count
            check += 1
        }
    }
    temp = e
}
// 처음꺼 1등이고, 두번째꺼가 1번이랑 같으면 공동 1등, => 순위는 2번까지 나온걸로 쳐야하니까 다음은 3등이 되어야함
// 다르면 다시 체크, 인덱스에 + 1 해서 등수 줌, 딕셔너리로 생성
// 배열 완성되면 2번째 입력값에 맞는 국가코드 찾아서 그 국가코드의 등수 반환

print(resultDictionary[K]!)
