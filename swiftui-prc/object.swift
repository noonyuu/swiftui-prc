//
//  object.swift
//  swiftui-prc
//
//  Created by shimizu on 2024/08/12.
//

// モディファイアは上から実行される
// モディファイアは一番上に書いた方が優先される

import SwiftUI

struct object: View {
    // テキストフィールド用の変数
    @State var inputText = ""
    // トグルの状態管理用の変数
    @State var isOn = false
    
    var body: some View {
        List {
            Text("りんご")
            Text("いちご")
            Text("みかん")
        }.frame(height: 200)
        ScrollView{
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    // alignmentは、左が.leadingで、右が.trailingで、上が.topで、下が.bottom
                    .frame(width: 100, height: 50, alignment: .trailing)
                    .padding(10)
                    .padding(.top)
                    .background(.yellow)
            }
            .padding()
            HStack {
                // 省略なし
                Button(action: {
                    // 押下時の処理
                }, label: {
                    Text("ボタン")
                })
                // labelを省略
                Button(action: {
                    // 押下時の処理
                }) {
                    Text("ボタン")
                }
                // actionを省略
                Button {
                    // 押下時の処理
                } label: {
                    Text("ボタン")
                }
                // シンプル
                Button("ボタン") {
                    //　押下時の処理
                }
            }
            VStack {
                Toggle("スイッチ", isOn: $isOn)
                TextField("テキストを入力", text: $inputText)
                    .padding()
                    .frame(height: 40)  // 高さ
                    .background(Color.red) // 背景色
                    .cornerRadius(5) // 角
            }
            VStack {
                //                Image("carrot")
                Image(systemName: "car")
            }
            HStack{
                Rectangle()
                    .frame(height: 100)
                    .frame(width: 100)
                Circle()
                    .frame(height: 100)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

#Preview {
    object()
}
