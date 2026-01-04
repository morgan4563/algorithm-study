import Foundation

let input = readLine()!.split(separator: " ").map {Int($0)!}
//p는 플레이어 수, m은 방 정원
let (p,m) = (input[0],input[1])
// room 첫 튜플의 첫 요소 : 방레벨
// 두번째는 배열 -> 배열의, 튜플0 : 참여자 레벨, 튜플1: 참여자 닉네임
var rooms = [(Int,[(Int,String)])]()

for _ in 0..<p {
    let input2 = readLine()!.split(separator: " ")
    let (l,n) = (Int(input2[0])!,String(input2[1]))
    var insertFlag = false
    for roomIndex in 0..<rooms.count {
        if rooms[roomIndex].0 - 10 <= l && rooms[roomIndex].0 + 10 >= l {
            // 해당룸에 레벨이 맞은경우
            if rooms[roomIndex].1.count < m {
                //해당 룸의 인원이 미달인경우
                rooms[roomIndex].1.append((l,n))
                insertFlag = true
                break
            } else {
                continue
            }
        }
    }
    // 끝까지 다돌았는데 방이 없다면? 방을 추가해야해
    if insertFlag == false {
        rooms.append((l,[(l,n)]))
    }
}

//이제 만들어진 방 체크하면서 완성된 방을 Started! 출력한다음, sort해서 닉넴순 출력
//대기중은 방은 Waiting! 출력한다음 sort해서 닉넴순 출력

for room in rooms {
    let sorted = room.1.sorted {
        return $0.1 < $1.1
    }
    if room.1.count == m {
        print("Started!")
    } else {
        print("Waiting!")
    }
    for player in sorted {
        print("\(player.0) \(player.1)")
    }
}