//
//  ContentView.swift
//  GestureGame
//
//  Created by User14 on 2021/4/7.
//

import SwiftUI

var names = [
    Question(first: "주", second: "맥", third: "유", chinese: "周柏維", words: ["주","맥","유"], offsets: [])
    /*Name(first: "임", second: "혜", third: "정", chinese: "林惠婷"),
    Name(first: "새", second: "패", third: "기", chinese: "思沛淇"),
    Name(first: "접", second: "헌", third: "신", chinese: "葉軒辰"),
    Name(first: "접", second: "유", third: "군", chinese: "葉宥君"),
    Name(first: "고", second: "어", third: "균", chinese: "古語鈞"),
    Name(first: "무", second: "이", third: "훤", chinese: "巫怡萱"),
    Name(first: "살", second: "강", third: "신", chinese: "蔡慶辰"),
    Name(first: "황", second: "조", third: "인", chinese: "黃祖麟"),
    Name(first: "홍", second: "질", third: "안", chinese: "洪至安"),
    Name(first: "설", second: "용", third: "은", chinese: "薛容恩"),
    Name(first: "", second: "", third: "", chinese: "")*/
]

var order = [[0, 1, 2], [0, 2, 1], [1, 0, 2], [1, 2, 0], [2, 0, 1], [2, 1, 0]]

struct ContentView: View {
    @State private var startGame : Bool = false
    @StateObject var settings = Settings()
    var body: some View {
        if(startGame == true) {
            test().environmentObject(settings)
        }
        else {
            ZStack {
                Image("background")
                Button(action: {
                    startGame = true
                    generate_question()
                }, label: {
                    Text("開始遊戲")
                        .bold()
                        .font(.system(size: 20))
                        .foregroundColor(.blue)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(20)
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white))
                })
            }
            .onAppear {
                names.shuffle()
                order.shuffle()
                print(names[0])
                print(order[0])
            }
        }
    }
    
    func generate_question(){
        settings.current_name = names[0]
        for i in 0..<settings.current_name.words.count {
            settings.current_name.offsets.append(CGSize(width: 300 + i * 100, height: 150))
            settings.newPositions.append(CGSize(width: 300 + i * 100, height: 150))
            settings.ballOffsets.append(CGSize(width: 300 + i * 100, height: 300))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
