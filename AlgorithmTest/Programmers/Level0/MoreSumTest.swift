import Testing

struct MoreSumTest {
    let result = solution(9, 91)

    @Test func example() async throws {
        
    }
    
    
    @Test("MoreSum") func test() {
        #expect(result == 991)
    }
}
