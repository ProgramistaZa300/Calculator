//
//  ButtonView.swift
//  Calculator
//
//  Created by student on 10/10/2023.
//

import SwiftUI

struct ButtonView: View {
    @State var text: String = ""
    @State var width: CGFloat = 0
    @State var height: CGFloat = 0
    var body: some View {
        Text(text).foregroundStyle(.blue).padding().frame(width: width, height: height).border(Color.black, width: 2.0).font(.largeTitle)
    }
}
