//
//  minion.swift
//  swiftui-prc
//
//  Created by shimizu on 2024/08/12.
//

import SwiftUI

struct minion: View {
    var body: some View {
        List{
            VStack {
                ZStack {
                    Rectangle()
                        .foregroundColor(.yellow)
                        .frame(width: 300, height: 300)
                    VStack {
                        HStack {
                            Rectangle()
                                .foregroundColor(.black)
                                .frame(width: 60, height: 20)
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.gray)
                                    .frame(width: 90, height: 90)
                                Rectangle()
                                    .foregroundColor(.white)
                                    .frame(width: 70, height: 70)
                                Rectangle()
                                    .foregroundColor(.black)
                                    .frame(width: 20, height: 20)
                            }
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.gray)
                                    .frame(width: 90, height: 90)
                                Rectangle()
                                    .foregroundColor(.white)
                                    .frame(width: 70, height: 70)
                                Rectangle()
                                    .foregroundColor(.black)
                                    .frame(width: 20, height: 20)
                            }
                            
                            Rectangle()
                                .foregroundColor(.black)
                                .frame(width: 60, height: 20)
                        }
                        ZStack {
                            Rectangle()
                                .foregroundColor(.black)
                                .frame(width: 70, height: 40)
                            VStack {
                                Rectangle()
                                    .foregroundColor(.white)
                                    .frame(width: 60, height: 10)
                                Rectangle()
                                    .foregroundColor(.red)
                                    .frame(width: 60, height: 10)
                            }
                        }
                    }
                }
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: 300, height: 100)
                HStack {
                    Rectangle()
                        .foregroundColor(.black)
                        .frame(width: 70, height: 30)
                    Rectangle()
                        .foregroundColor(.black)
                        .frame(width: 70, height: 30)
                }
            }
            // ------------------------------------
            HStack(spacing: 0) {
                ZStack(alignment: .trailing){
                    Rectangle()
                        .frame(width: 20, height: 30)
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 35, height: 30)
                }
                Rectangle()
                    .frame(width: 40, height: 20)
                    .foregroundColor(.yellow)
                VStack(spacing:0) {
                    ZStack {
                        ZStack(alignment: .bottom) {
                            Rectangle()
                                .frame(width: 230, height: 100)
                                .foregroundColor(Color(.systemYellow))
                            Rectangle()
                                .frame(width: 230, height: 200)
                                .foregroundColor(.yellow)
                                .cornerRadius(100)
                        }
                        // 目
                        VStack{
                            HStack(spacing:0) {
                                VStack(spacing:1){
                                    Rectangle()
                                        .frame(width: 30, height: 10)
                                        .foregroundColor(.black)
                                    Rectangle()
                                        .frame(width: 30, height: 10)
                                        .foregroundColor(.black)
                                }
                                ForEach(0..<2) { i in
                                    ZStack {
                                        Circle()
                                            .frame(width: 85)
                                            .foregroundColor(.gray)
                                        Circle()
                                            .frame(width: 65)
                                            .foregroundColor(.white)
                                        Circle()
                                            .frame(width: 35)
                                        Circle()
                                            .frame(width: 30)
                                            .foregroundColor(.red)
                                        Circle()
                                            .frame(width: 25)
                                    }
                                }
                                VStack(spacing:1){
                                    Rectangle()
                                        .frame(width: 30, height: 10)
                                        .foregroundColor(.black)
                                    Rectangle()
                                        .frame(width: 30, height: 10)
                                        .foregroundColor(.black)
                                }
                            }
                            .padding(.top, 40)
                            VStack(spacing:0) {
                                // 口
                                ZStack(alignment: .top) {
                                    Ellipse()
                                        .frame(width: 50, height: 30)
                                        .foregroundColor(.black)
                                    Rectangle()
                                        .frame(width: 50, height: 15)
                                        .foregroundColor(.black)
                                    Rectangle()
                                        .padding(.top,2)
                                        .frame(width: 45, height: 13)
                                        .foregroundColor(.white)
                                    
                                }
                            }
                        }
                    }
                    VStack(spacing:-5){
                        // 下半身
                        ZStack(alignment: .center) {
                            ZStack(alignment:.top) {
                                Rectangle()
                                    .frame(width: 230, height: 80)
                                    .foregroundColor(.blue)
                                Rectangle()
                                    .frame(width: 230, height: 150)
                                    .foregroundColor(.blue)
                                    .cornerRadius(100)
                            }
                            VStack(){
                                Circle()
                                    .trim(from: 0, to: 0.5)
                                    .stroke(
                                        Color.black,
                                        style: StrokeStyle(lineWidth: 3)
                                    )
                                    .frame(width: 90, height: 80)
                                Rectangle()
                                    .fill(Color.black)
                                    .frame(width: 80, height: 3)
                                    .offset(y: -48)
                            }
                            .offset(y: -10)
                        }
                        //　足
                        HStack(spacing:5) {
                            VStack(alignment: .trailing, spacing: 0) {
                                Rectangle()
                                    .frame(width: 30, height: 20)
                                    .foregroundColor(.blue)
                                
                                HStack(spacing: 0) {
                                    ZStack(alignment: .trailing) {
                                        ZStack(alignment: .bottom){
                                            Rectangle()
                                                .frame(width: 40, height: 15)
                                                .foregroundColor(.black)
                                                .cornerRadius(100)
                                            Rectangle()
                                                .frame(width: 40, height: 7)
                                                .foregroundColor(.black)
                                        }
                                        Rectangle()
                                            .frame(width: 30, height: 15)
                                            .foregroundColor(.black)
                                    }
                                }
                            }
                            VStack(alignment: .leading, spacing: 0) {
                                Rectangle()
                                    .frame(width: 30, height: 20)
                                    .foregroundColor(.blue)
                                
                                HStack(spacing: 0) {
                                    ZStack(alignment: .leading) {
                                        ZStack(alignment: .bottom){
                                            Rectangle()
                                                .frame(width: 40, height: 15)
                                                .foregroundColor(.black)
                                                .cornerRadius(100)
                                            Rectangle()
                                                .frame(width: 40, height: 7)
                                                .foregroundColor(.black)
                                        }
                                        Rectangle()
                                            .frame(width: 30, height: 15)
                                            .foregroundColor(.black)
                                    }
                                }
                            }
                        }
                    }
                }
                Rectangle()
                    .frame(width: 40, height: 20)
                    .foregroundColor(.yellow)
                ZStack(alignment: .leading){
                    Rectangle()
                        .frame(width: 20, height: 30)
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 35, height: 30)
                }
                
            }
        }
    }
}

#Preview {
    minion()
}
