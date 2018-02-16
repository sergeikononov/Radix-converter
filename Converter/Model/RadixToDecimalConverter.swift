//
//  RadixToDecimalClass.swift
//  RadixToDecimal
//
//  Created by Sergei on 07.02.2018.
//  Copyright © 2018 Sergei. All rights reserved.
//
//  Developers:
//  Sergei Kononov
//  Timur Fatykhov

import Foundation

class RadixToDecimalConverter {
    init() {
    }  
    
    private static func CharToNumber(character: Character) -> Int {
        let character = character
        var value: Int
        switch character {
        case "A","a":
            value = 10
        case "B","b":
            value = 11
        case "C","c":
            value = 12
        case "D","d":
            value = 13
        case "E","e":
            value = 14
        case "F","f":
            value = 15
        default:
            value = Int(String(character))!
        }
        return value
    }
    
    private static func convert(number: String, fromBbase: Int, weight: Double) -> Double {
        
        
        
        return 0.0
    }
    
    public static func convert(number: String, fromBase base: Int) -> Double {
        
        let length:Int = number.count
        var power:Int = 1
        var result:Double = 0.0
        
        for index in stride(from: length-1, through: 0, by: -1) {
            if (CharToNumber(character: number[index]) >= base) {
                print("invalid number")
                return Double(-index)
            }
            
            result += Double(CharToNumber(character: number[index]) * power)
            power*=base
        }
        return result
    }
    
    
}