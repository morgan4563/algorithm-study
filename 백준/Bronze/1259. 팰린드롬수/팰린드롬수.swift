import Foundation

while let line = readLine(), line != "0" {
    let numArray = Array(line)
    let mid = numArray.count / 2
    var result = true
    for i in 0..<mid {
        if numArray[i] != numArray[numArray.count-1-i] {
            result = false
        }
    }
    if result {
        print("yes")
    }else {
        print("no")
    }
}
