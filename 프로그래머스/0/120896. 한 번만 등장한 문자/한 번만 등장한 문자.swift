import Foundation

//7:30 시작
func solution(_ s:String) -> String {
    //firstIndex, lastIndex 검색 해서 인덱스가 같은 경우만 정렬전 배열에 넣음
    var result = [String]()
    var newS = Array(s)
    
    for e in newS {
        if newS.firstIndex(of: e) == newS.lastIndex(of: e) {
            result.append(String(e))
        } 
    }
    //sort
    result.sort()
    
    //출력
    return result.joined()
}
// 7:37 끝 