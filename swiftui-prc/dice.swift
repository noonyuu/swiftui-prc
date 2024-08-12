//
//  dice.swift
//  swiftui-prc
//
//  Created by shimizu on 2024/08/13.
//

import SwiftUI

struct dice: View {
    @State private var randomNumber = 1
    @State private var timer: Timer?
    @State private var isRolling = false // 連続してサイコロを振れないように
    
    var body: some View {
        VStack {
            Spacer() // 限界までスペースを作れる。複数あると感覚は均等になる
            Image(systemName: "die.face.\(randomNumber)")
                .resizable() // 画像の大きさをいじるときは必須
                .scaledToFit() // 画像の比率を固定
                .frame(width: UIScreen.main.bounds.width/2) // UIScreen.main.bounds.width/2 は画面の1/2
                .padding()
            Spacer()
            Button {
                playDice()
            } label: {
                Text("サイコロを振る")
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.black)
                    .cornerRadius(10)
            }
            .disabled(isRolling)
            Spacer()
        }
    }
    private func playDice() {
        print("ボタンが押されました")
        isRolling = true
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) {
            _ in randomNumber = Int.random(in: 1...6)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            timer?.invalidate()
            timer = nil
            isRolling = false
        }
    }
}

#Preview {
    dice()
}
