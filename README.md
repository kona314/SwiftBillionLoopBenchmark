# Swift Billion Loop Benchmark

## Description
Inspired by [Benjamin Dicken's post](https://benjdd.com/loops/) comparing nested loop performance between JS, Python, Go, and C. This does the same thing for Swift: 
```swift 
var array = Array(repeating: 0, count: 10_000)
for i in 0..<10_000 {
    for j in 0..<100_000 {
        array[i] = array[i] + j
    }
}
```

On my machine (a 10-core M1 Pro MacBook Pro), this takes an average of 0.324 seconds, only slightly longer than C in the original tests.

## Usage 
1. Build the executable: 
    ```console 
    swift build -c release
    ```
2. Run it: 
    ```console
    ./.build/release/billion-loop-benchmark
    ```