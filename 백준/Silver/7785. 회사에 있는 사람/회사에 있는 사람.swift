import Foundation

var company = Set<String>()

let N = Int(readLine()!)!

for _ in 0..<N {
    let input = readLine()!.split(separator: " ")
    let name = String(input[0])
    let status = input[1]
    
    if status == "enter" {
        company.insert(name)
    }else if status == "leave" {
        company.remove(name)
    }
}

company.sorted(by: >).forEach {
    print($0)
}
