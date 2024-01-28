import UIKit
//: 1. What is a closure ? How to execute a closure?

//: Closure 像是沒有參數和回傳資料的 function，他匿名的特性可以讓程式碼更簡潔，高階函數（如 map, filter）也使用 closure 有效率的處理資料，closure 通常執行方式如下：
let closureDemo: (Int, Int) -> Bool = { a, b in
    return a > b
}
closureDemo(5,3)

// 對照 function
func funcDemo(a: Int, b: Int) -> Bool {
    return a > b
}
funcDemo(a: 5, b: 2)


//: 2. Please declare a closure whose input type is Int, output type is Bool. The functionality of this closure is to verify if the input is odd or not. Return true if it’s odd and vice versa.
let oddClosure: (Int) -> Bool = { number in
    return number % 2 == 1
}
let odd = oddClosure(5)
let notOdd = oddClosure(10)
//: 3. Please complete the following function that prints a triangle made of asterisks.
func printTriangle(layers: Int) { // TODO: print a triangle
    for i in 1...layers {
        let asterisks = String(repeating: "*", count: i)
        print(asterisks)
    }
}
printTriangle(layers: 5)
//: For example, here’s what the output of should be:
// *
// **
// ***
// ****
// *****
