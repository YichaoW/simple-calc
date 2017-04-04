//
//  main.swift
//  SimpleCalc
//
//  Created by Yichao Wang on 3/30/17.
//  Copyright © 2017 Yichao Wang. All rights reserved.
//

import Foundation

print("Support negative and decimal numbers.")
print("Enter an expression separated by returns")
print("Or enter an expression with several numbers and one extended operand(count, avg, fact) at the end separated by space:")
let line1 = readLine(strippingNewline: true)!.components(separatedBy: " ")
if line1.count > 1 {
    switch line1[line1.count-1] {
        case "count":
            print("Count: \(line1.count-1)")
        case "avg":
            var sum = 0.0
            for index in 0...line1.count-2 {
                sum = sum + Double(line1[index])!
            }
            print("Average: \(sum/Double((line1.count-1)))")
        case "fact":
            var num = Int(line1[0])!
            if (num >= 0 && line1.count <= 2) {
                var result = 1
                if (num > 0) {
                    for index in 1...num {
                        result = result * index
                    }
                }
                print("fact \(result)")
            } else {
                print("Invalid input for fact.")
            }
        default:
            print("Please enter a valid expression.")
    }
} else {
    let num1 = Double(line1[0])
    let op = readLine(strippingNewline: true)!
    let num2 = Double(readLine(strippingNewline: true)!)
    switch op {
        case "+":
            print("Result: \(num1! + num2!)")
        case "-":
            print("Result: \(num1! - num2!)")
        case "*":
            print("Result: \(num1! * num2!)")
        case "/":
            print("Result: \(num1! / num2!)")
        case "%":
            print("Result: \(num1!.truncatingRemainder(dividingBy: num2!))")
        default:
            print("Please enter a valid operation.")
    }
}
print()


