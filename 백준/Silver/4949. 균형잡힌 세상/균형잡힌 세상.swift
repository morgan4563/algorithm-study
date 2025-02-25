import Foundation

while let input = readLine(), input != "." {
    var stack = [String]()

    for i in input {
        let data = String(i)
        
        if ["(","[",")","]"].contains(data) {
            if data == ")" && stack.last == "(" {
                stack.removeLast()
            } else if data == "]" && stack.last == "[" {
                stack.removeLast()
            } else {
                stack.append(data)
            }
        }
    }
    print(stack.isEmpty ? "yes" : "no")
}
