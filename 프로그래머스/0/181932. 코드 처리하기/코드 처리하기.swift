import Foundation
//5:46
func solution(_ code:String) -> String {
    //시작 모드 0으로 설정
    //코드 하나씩 탐색, 문자 1 발견시 mode 변경
    //mode에 따라서 code 읽으며 문자열 ret 생성
    //모드 0 , 모드 변경문자(1) 아닐경우 인덱스 짝수 일 때 ret에 code[idx] 값 append
    //모드 1 , 모드 변경문자(1) 아닐경우 인덱스 홀수 일 때 ret에 code[idx] 값 append
    //만들어진 문자 ret 반환, ret 빈문자시 EMPTY 문자열 반환
    var code = Array(code)
    var mode = 0
    var ret = ""
    for i in 0..<code.count {
        if code[i] == "1" {
            mode = mode == 0 ? 1 : 0
            continue
        }
        
        if mode == 0 {
            if i % 2 == 0 {
                ret.append(code[i])
            }    
        } else if mode == 1 {
            if i % 2 != 0 {
                ret.append(code[i])
            }
        }
    }

    return ret.isEmpty ? "EMPTY" : ret
}
//5:55