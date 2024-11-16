// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
enum Benchmark {
    static func main() {
        let start = ContinuousClock.now
        var array = Array(repeating: 0, count: 10_000)
        for i in 0..<10_000 {
            for j in 0..<100_000 {
                array[i] = array[i] + j
            }
        }
        let end = ContinuousClock.now
        let exec = start.duration(to: end)
        print("took \(exec)")
    }
}