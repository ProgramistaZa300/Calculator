//
//  Operations.swift
//  Calculator
//
//  Created by student on 10/10/2023.
//

import Foundation

struct Operations{
    
    func Add(fN : Int, sN : Int) -> Double {
        return Double (fN + sN)
    }
    
    func Sub(fN : Int, sN : Int) -> Double {
        return Double (fN - sN)
    }
    
    func Multiply(fN : Int, sN : Int) -> Double {
        return Double (fN * sN)
    }
    
    func Divide(fN : Int, sN : Int) -> Double {
        return Double (fN / sN)
    }
    
    func Sin(fN : Double) -> Double {
        return sin(fN)
    }
}
