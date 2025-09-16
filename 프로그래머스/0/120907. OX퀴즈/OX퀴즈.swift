import Foundation

func solution(_ quiz:[String]) -> [String] {
    var resultArray = [String]()
    
    for i in quiz {
        let data = i.split(separator: " ")
        
        let num1 = data[0]
        let exp = data[1]
        let num2 = data[2]
        let result = data[4]
        
        switch exp {
            case "+":
            if Int(num1)! + Int(num2)! == Int(result)! {
                resultArray.append("O")
            } else {
                resultArray.append("X")
            }
            case "-":
            if Int(num1)! - Int(num2)! == Int(result)! {
                resultArray.append("O")
            } else {
                resultArray.append("X")
            }
            case "/":
            if Int(num1)! / Int(num2)! == Int(result)! {
                resultArray.append("O")
            } else {
                resultArray.append("X")
            }
            case "*":
            if Int(num1)! * Int(num2)! == Int(result)! {
                resultArray.append("O")
            } else {
                resultArray.append("X")
            }
            default:
            break
        }
    }
    return resultArray
    
}