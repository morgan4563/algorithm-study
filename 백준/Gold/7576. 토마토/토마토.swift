import Foundation

var input = readLine()!.split(separator: " ").map{Int($0)!}

let maxX = input[0]
let maxY = input[1]
var box = [[Int]]()
var day = 0

for _ in 0..<maxY {
    box.append(readLine()!.split(separator: " ").map{Int($0)!})
}

var queue = [(Int,Int)]()

for i in 0..<maxY {
    for j in 0..<maxX {
        if box[i][j] == 1 {
            queue.append((i,j))
            // 1이 있는 모든곳의 인덱스 값 queue 넣기
        }
    }
}

var direction = [(-1,0),(0,1),(1,0),(0,-1)]
//시계방향
//y가 첫번째,x가 두번째

var head = 0
while head < queue.count {
    let index = queue[head]
    head += 1
    
    let yIndex = index.0
    let xIndex = index.1
    
    for d in direction {
        let dy = d.0
        let dx = d.1
        
        if yIndex + dy >= 0 && yIndex + dy < maxY && xIndex + dx >= 0 && xIndex + dx < maxX {
            let ny = yIndex + dy
            let nx = xIndex + dx
            
            if box[ny][nx] == 0 {
                box[ny][nx] += box[yIndex][xIndex] + 1
                queue.append((ny,nx))
            }
        }
    }
}

var max = 0
var flag = true
for i in 0..<maxY {
    for j in 0..<maxX {
        if box[i][j] == 0 {
            flag = false
            break
        }
        
        if max < box[i][j] {
            max = box[i][j]
        }
    }
}

print(flag ? max-1 : -1)
