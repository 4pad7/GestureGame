//
//  GameView.swift
//  GestureGame
//
//  Created by User14 on 2021/4/7.
//

import SwiftUI

/*struct GameView: View {
    @State private var offset0 : CGSize = CGSize(width: 100, height: 0)
    @State private var newPosition0 = CGSize(width: 100, height: 0)
    @State private var offset1 : CGSize = CGSize(width: 220, height: 0)
    @State private var newPosition1 = CGSize(width: 220, height: 0)
    @State private var offset2 : CGSize = CGSize(width: 340, height: 0)
    @State private var newPosition2 = CGSize(width: 340, height: 0)
    @State private var tempFirst = ""
    @State private var tempSecond = ""
    @State private var tempThird = ""
    @State private var add = 0
    
    var dragGesture0: some Gesture {
        DragGesture()
            .onChanged({ value in
                offset0.width = newPosition0.width + value.translation.width
                offset0.height = newPosition0.height + value.translation.height
            })
            .onEnded({ value in
                newPosition0 = offset0
                if(checkAns(handX: offset0.width, handY: offset0.height, word: <#String#>, number: <#Int#>)) {
                    
                }
            })
    }
    var dragGesture1: some Gesture {
        DragGesture()
            .onChanged({ value in
                offset1.width = newPosition1.width + value.translation.width
                offset1.height = newPosition1.height + value.translation.height
            })
            .onEnded({ value in
                newPosition1 = offset1
            })
    }
    var dragGesture2: some Gesture {
        DragGesture()
            .onChanged({ value in
                offset2.width = newPosition2.width + value.translation.width
                offset2.height = newPosition2.height + value.translation.height
            })
            .onEnded({ value in
                newPosition2 = offset2
            })
    }
    
    var body: some View {
        ZStack {
            Image("volleyball")
                .resizable()
                .frame(width: 100, height: 100)
                .offset(x: 100, y: 120)
            Image("volleyball")
                .resizable()
                .frame(width: 100, height: 100)
                .offset(x: 220, y: 120)
            Image("volleyball")
                .resizable()
                .frame(width: 100, height: 100)
                .offset(x: 340, y: 120)
            
            if(order[0][0] == 0) {
                if(order[0][1] == 1) {      // 012
                    Image("hand")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .overlay(Text("\(names[0].first)").font(Font.system(size: 40)).offset(x: 9, y: 20))
                        .offset(offset0)
                        .gesture(dragGesture0)
                    Image("hand")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .overlay(Text("\(names[0].second)").font(Font.system(size: 40)).offset(x: 9, y: 20))
                        .offset(offset1)
                        .gesture(dragGesture1)
                    Image("hand")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .overlay(Text("\(names[0].third)").font(Font.system(size: 40)).offset(x: 9, y: 20))
                        .offset(offset2)
                        .gesture(dragGesture2)
                }
                else {                      // 021
                    Image("hand")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .overlay(Text("\(names[0].first)").font(Font.system(size: 40)).offset(x: 9, y: 20))
                        .offset(offset0)
                        .gesture(dragGesture0)
                    Image("hand")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .overlay(Text("\(names[0].third)").font(Font.system(size: 40)).offset(x: 9, y: 20))
                        .offset(offset1)
                        .gesture(dragGesture1)
                    Image("hand")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .overlay(Text("\(names[0].second)").font(Font.system(size: 40)).offset(x: 9, y: 20))
                        .offset(offset2)
                        .gesture(dragGesture2)
                }
            }
            else if(order[0][0] == 1) {
                if(order[0][1] == 0) {      // 102
                    Image("hand")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .overlay(Text("\(names[0].second)").font(Font.system(size: 40)).offset(x: 9, y: 20))
                        .offset(offset0)
                        .gesture(dragGesture0)
                    Image("hand")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .overlay(Text("\(names[0].first)").font(Font.system(size: 40)).offset(x: 9, y: 20))
                        .offset(offset1)
                        .gesture(dragGesture1)
                    Image("hand")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .overlay(Text("\(names[0].third)").font(Font.system(size: 40)).offset(x: 9, y: 20))
                        .offset(offset2)
                        .gesture(dragGesture2)
                }
                else {                      // 120
                    Image("hand")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .overlay(Text("\(names[0].second)").font(Font.system(size: 40)).offset(x: 9, y: 20))
                        .offset(offset0)
                        .gesture(dragGesture0)
                    Image("hand")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .overlay(Text("\(names[0].third)").font(Font.system(size: 40)).offset(x: 9, y: 20))
                        .offset(offset1)
                        .gesture(dragGesture1)
                    Image("hand")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .overlay(Text("\(names[0].first)").font(Font.system(size: 40)).offset(x: 9, y: 20))
                        .offset(offset2)
                        .gesture(dragGesture2)
                }
            }
            else {
                if(order[0][1] == 0) {      // 201
                    Image("hand")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .overlay(Text("\(names[0].third)").font(Font.system(size: 40)).offset(x: 9, y: 20))
                        .offset(offset0)
                        .gesture(dragGesture0)
                    Image("hand")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .overlay(Text("\(names[0].first)").font(Font.system(size: 40)).offset(x: 9, y: 20))
                        .offset(offset1)
                        .gesture(dragGesture1)
                    Image("hand")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .overlay(Text("\(names[0].second)").font(Font.system(size: 40)).offset(x: 9, y: 20))
                        .offset(offset2)
                        .gesture(dragGesture2)
                }
                else {                      // 210
                    Image("hand")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .overlay(Text("\(names[0].third)").font(Font.system(size: 40)).offset(x: 9, y: 20))
                        .offset(offset0)
                        .gesture(dragGesture0)
                    Image("hand")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .overlay(Text("\(names[0].second)").font(Font.system(size: 40)).offset(x: 9, y: 20))
                        .offset(offset1)
                        .gesture(dragGesture1)
                    Image("hand")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .overlay(Text("\(names[0].first)").font(Font.system(size: 40)).offset(x: 9, y: 20))
                        .offset(offset2)
                        .gesture(dragGesture2)
                }
                
            }
        }
    }
    
    func checkAns(handX: CGFloat, handY: CGFloat, word: String, number: Int) -> Bool {
        let handRect = CGRect(x: handX, y: handY, width: 100, height: 100)
        var tmpName = ["", "", ""]
        var howMuch = 0
        tmpName[0] = names[number].first
        tmpName[1] = names[number].second
        tmpName[2] = names[number].third
        for index in (0...2) {
            let ballRect = CGRect(x: 100 + add, y: 120, width: 100, height: 100)
            add += 120
            let interRect = handRect.intersection(ballRect)
            if(interRect.width >= 60 && interRect.height >= 60) {   //有沒有放到球上面
                if(word==tmpName[index]) {  //有沒有放對
                    howMuch += 1
                    return true
                }
            }
            else {
                return false
            }
        }
        add = 0
        return false
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
*/
