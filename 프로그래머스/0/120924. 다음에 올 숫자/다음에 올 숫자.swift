import Foundation

func solution(_ common:[Int]) -> Int {
    var num1 = common[1] - common[0]
    if common[2] - num1 == common[1] {
        return common.last! + num1
    }
    
    var num2 = common[1] / common[0]
    return common.last! * num2
}