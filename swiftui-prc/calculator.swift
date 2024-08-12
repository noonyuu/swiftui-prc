//
//  calculator.swift
//  swiftui-prc
//
//  Created by shimizu on 2024/08/13.
//

import SwiftUI

struct calculator: View {
    @State var inputText = ""
    @State var tax8 = 0.0 // 初期値が0.0なのでDouble
    @State var tax10 = 0.0
    
    var body: some View {
        VStack(spacing:20) {
            TextField("ここに文字を入力", text: $inputText)
                .keyboardType(.numberPad) // 入力値を数字のみに限定
            Button("計算") {
                tax8 = (Double(inputText) ?? 0) * 0.08 // inputTextはString型・0.08はDouble型 / 型を揃えるためにDouble()でキャスト
                tax10 = (Double(inputText) ?? 0) * 0.1
            }
            Text("価格：\(inputText)")
            Text("消費税8%：\(tax8)")
            Text("消費税10%：\(tax10)")
        }
        .padding()
    }
}

#Preview {
    calculator()
}
