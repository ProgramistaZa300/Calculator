//
//  ContentView.swift
//  Calculator
//
//  Created by student on 10/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State var number = ""
    @State var fNumber = -1
    @State var sNumber = -1
    @State var operation = ""
    
    func CalcChoser(calc : String, fN : Int, sN : Int) -> Double
    {
        var number = -1.0
        switch calc
        {
        case "plus":
            number = Operations().Add(fN: fN, sN: sN)
        case "minus":
            number = Operations().Sub(fN: fN, sN: sN)
        case "multiply":
            number = Operations().Multiply(fN: fN, sN: sN)
        case "divide":
            number = Operations().Divide(fN: fN, sN: sN)
        case "sin":
            number = Operations().Sin(fN: Double(fN))
        default:
            number = -1
        }
        return number
    }
    
    var body: some View {
        VStack {
            Text("KALKULATOR").font(.largeTitle)
            Spacer().frame(height: 100)
            Text(number).padding().frame(width: 315.0, height: 60.0).border(Color.black, width: 2.0)
            HStack {
                ButtonView(text: "1", width: 100.0, height: 60.0).onTapGesture {
                    number += "1"
                }
                ButtonView(text: "2", width: 100.0, height: 60.0).onTapGesture {
                    number += "2"
                }
                ButtonView(text: "3", width: 100.0, height: 60.0).onTapGesture {
                    number += "3"
                }
            }
            HStack {
                ButtonView(text: "4", width: 100.0, height: 60.0).onTapGesture {
                    number += "4"
                }
                ButtonView(text: "5", width: 100.0, height: 60.0).onTapGesture {
                    number += "5"
                }
                ButtonView(text: "6", width: 100.0, height: 60.0).onTapGesture {
                    number += "6"
                }
            }
            HStack {
                ButtonView(text: "7", width: 100.0, height: 60.0).onTapGesture {
                    number += "7"
                }
                ButtonView(text: "8", width: 100.0, height: 60.0).onTapGesture {
                    number += "8"
                }
                ButtonView(text: "9", width: 100.0, height: 60.0).onTapGesture {
                    number += "9"
                }
            }
            HStack {
                ButtonView(text: "0", width: 100.0, height: 60.0).onTapGesture {
                    if(number != ""){
                        number += "0"
                    }
                }
                ButtonView(text: "+", width: 100.0, height: 60.0).onTapGesture {
                    if (fNumber == -1){
                        fNumber = Int(number) ?? -1
                        operation = "plus"
                        number = ""
                    }
                }
                ButtonView(text: "-", width: 100.0, height: 60.0).onTapGesture {
                    if (fNumber == -1){
                        fNumber = Int(number) ?? -1
                        operation = "minus"
                        number = ""
                    }
                }
            }
            HStack {
                ButtonView(text: "*", width: 100.0, height: 60.0).onTapGesture {
                    if (fNumber == -1){
                        fNumber = Int(number) ?? -1
                        operation = "multiply"
                        number = ""
                    }
                }
                ButtonView(text: "/", width: 100.0, height: 60.0).onTapGesture {
                    if (fNumber == -1){
                        fNumber = Int(number) ?? -1
                        operation = "divide"
                        number = ""
                    }
                }
                ButtonView(text: "sin", width: 100.0, height: 60.0).onTapGesture {
                    if (fNumber == -1){
                        fNumber = Int(number) ?? -1
                        operation = "sin"
                        number = ""
                    }
                }
            }
            ButtonView(text: "Oblicz", width: 315.0, height: 60.0).onTapGesture {
                if (fNumber == -1){
                    number = ""
                }
                else{
                    sNumber = Int(number) ?? -1
                    number = String(CalcChoser(calc: operation, fN: fNumber, sN: sNumber))
                    fNumber = -1
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
