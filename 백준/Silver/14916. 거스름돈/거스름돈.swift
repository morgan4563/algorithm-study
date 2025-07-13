import Foundation

var money = Int(readLine()!)!
var result = 0

while money > 0 {
    if money % 5 == 0 {
		result += money / 5
        break
    } else if money - 2 >= 0 {
        money -= 2
        result += 1
    } else {
        result = -1
        break
    }
}

print(result)