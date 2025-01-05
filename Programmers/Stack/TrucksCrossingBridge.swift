//
//  TrucksCrossingBridge.swift
//  Algorithm
//
//  Created by KimDongWoo on 1/5/25.
//



// 문제 설명
// 트럭 여러 대가 강을 가로지르는 일차선 다리를 정해진 순으로 건너려 합니다. 모든 트럭이 다리를 건너려면 최소 몇 초가 걸리는지 알아내야 합니다.
// 다리에는 트럭이 최대 bridge_length대 올라갈 수 있으며, 다리는 weight 이하까지의 무게를 견딜 수 있습니다. 단, 다리에 완전히 오르지 않은 트럭의 무게는 무시합니다.
//
// 예를 들어, 트럭 2대가 올라갈 수 있고 무게를 10kg까지 견디는 다리가 있습니다. 무게가 [7, 4, 5, 6]kg인 트럭이 순서대로 최단 시간 안에 다리를 건너려면 다음과 같이 건너야 합니다.
//
// 경과 시간    다리를 지난 트럭    다리를 건너는 트럭    대기 트럭
// 0         []              []               [7,4,5,6]
// 1~2       []              [7]              [4,5,6]
// 3         [7]             [4]              [5,6]
// 4         [7]             [4,5]            [6]
// 5         [7,4]           [5]              [6]
// 6~7       [7,4,5]         [6]              []
// 8         [7,4,5,6]       []               []
// 따라서, 모든 트럭이 다리를 지나려면 최소 8초가 걸립니다.
//
// solution 함수의 매개변수로 다리에 올라갈 수 있는 트럭 수 bridge_length, 다리가 견딜 수 있는 무게 weight, 트럭 별 무게 truck_weights가 주어집니다.
// 이때 모든 트럭이 다리를 건너려면 최소 몇 초가 걸리는지 return 하도록 solution 함수를 완성하세요.
//
// 제한 조건
// bridge_length는 1 이상 10,000 이하입니다.
// weight는 1 이상 10,000 이하입니다.
// truck_weights의 길이는 1 이상 10,000 이하입니다.
// 모든 트럭의 무게는 1 이상 weight 이하입니다.
// 입출력 예
// bridge_length    weight    truck_weights                      return
// 2                10        [7,4,5,6]                          8
// 100              100       [10]                               101
// 100              100       [10,10,10,10,10,10,10,10,10,10]    110


// 2초이면 10 - 7 - 나머지중 넣을수 없다면 7트럭 하나에 2초
//
// 하나에 트럭마다
// 마지막엔 플러스 1 초

func solution(_ bridge_length: Int,
              _ weight: Int,
              _ truck_weights: [Int]) -> Int {
    var time = 0 // 경과 시간을 저장하는 변수.
    var bridgeQueue: [(weight: Int, entryTime: Int)] = [] // 다리 위 트럭의 무게와 진입 시간을 저장하는 큐.
    var truckQueue = truck_weights // 대기 중인 트럭들을 저장하는 큐.

    // 다리 위 트럭이 모두 지나가고, 대기 중인 트럭도 없을 때까지 반복.
    while !bridgeQueue.isEmpty || !truckQueue.isEmpty {
        time += 1 // 시간 경과를 1초 증가.

        // 다리에서 나가야 할 트럭 제거.
        // 다리의 첫 번째 트럭이 진입한 지 `bridge_length`가 경과했으면 다리에서 제거.
        if let firstTruck = bridgeQueue.first,
           time - firstTruck.entryTime >= bridge_length {
            bridgeQueue.removeFirst()
        }

        // 현재 다리 위에 있는 트럭들의 총 무게를 계산.
        let currentBridgeWeight = bridgeQueue.reduce(0) { $0 + $1.weight }

        // 새로운 트럭을 다리에 올릴 수 있는지 확인.
        // 다리 위 트럭의 총 무게 + 다음 대기 트럭의 무게가 다리가 견딜 수 있는 무게 이하인 경우.
        if let nextTruckWeight = truckQueue.first,
           currentBridgeWeight + nextTruckWeight <= weight {
            // 대기 중인 첫 번째 트럭을 다리에 올리고, 진입 시간(time)을 기록.
            bridgeQueue.append((weight: nextTruckWeight, entryTime: time))
            truckQueue.removeFirst() // 대기 큐에서 해당 트럭 제거.
        }
    }

    return time // 모든 트럭이 다리를 건너는 데 걸린 총 시간 반환.
}

let bridge_length = 100
let weight = 100
let truck_weights = [10, 10, 10, 10, 10, 10, 10, 10, 10, 10]
print(solution(bridge_length, weight, truck_weights)) // Output: 110
