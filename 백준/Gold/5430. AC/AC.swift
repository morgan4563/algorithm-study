import Foundation

let T = Int(readLine()!)!
var reresult = [String]()

for _ in 0..<T {
    let p = readLine()!
	let n = Int(readLine()!)! // 4

    let array = readLine()!.dropFirst().dropLast().split(separator: ",").map({String($0)})
    var startIndex = 0
    var endIndex = n

    var flag = true

    for f in p {
        if f == "R" {
            flag.toggle()
        } else {
            if startIndex > endIndex {
                break
            }
			//0
            //end 0

            if flag {
                startIndex += 1
            } else {
                endIndex -= 1
            }
        }
    }

    if startIndex > endIndex {
        reresult.append("error")
    } else {
        if flag {
            let result = array[startIndex..<endIndex].joined(separator: ",")
            reresult.append("[" + result + "]")
        } else {
            let result = array[startIndex..<endIndex].reversed().joined(separator: ",")
            reresult.append("[" + result + "]")
        }
    }
}

reresult.forEach({
    print($0)
})
