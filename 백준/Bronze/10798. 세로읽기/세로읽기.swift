var arr = [[String]]()

for _ in 0..<5 {
    let input = readLine()!.map { String($0) }
    arr.append(input)
}

var newArr = Array(repeating: Array(repeating: "", count: 15),count: 15)

for i in 0..<5 {
    for j in 0..<arr[i].count {
		newArr[j][i] = arr[i][j]
    }
}

var result = ""
for i in 0..<15 {
    for j in 0..<15 {
        result.append(newArr[i][j])
    }
}

print(result)