import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

let (N,r,c) = (input[0],input[1],input[2])
//r행 c열 (x,y) 값 위치

var result = 0

func divide(x:Int, y:Int, size:Int) {

    if size == 1 {
        // 사이즈 1이면 끝내기
        return
    }
	// 각 사분면에 있을때마다 이전 값들을 result에 +해주기 2사분은 증가 x
    // half로 구간 나누기
    // 각 구간에 해당할때 더해줄 공간 크기 만들어주기
    let half = size / 2
    let plusResult = half * half

    // 상단 왼 오 하단 왼 오 순서로
    // x,y는 4보다 작아야한다 half보다 작아야하네
    if x >= 0 && x < half && y >= 0 && y < half {
        divide(x: x, y: y, size: half)
    } else if x >= 0 && x < half && y >= half && y < size {
        // x는 0보다 크고 half보다 작아야하며, y는 하프보다 같거나 크고 size보다는 작아야한다
        result += plusResult
        divide(x: x, y: y-half, size: half)
    } else if x >= half && x < size && y >= 0 && y < half {
		// x는 half보다 크거나 같고 size보다 작아야함 ,y는 0보다 같거나 크고 half보다 작아야한다
		result += plusResult * 2
        divide(x: x-half, y: y, size: half)
    } else {
        result += plusResult * 3
        divide(x: x-half, y: y-half, size: half)
    }
}

divide(x: r, y: c, size: Int(pow(2,Double(N))))
print(result)

// 처음 위치가 6,6 이라고 해보자
// 4사분에 걸릴거고
// 3배값 들어간 상태에서 4사분면 진입
//
