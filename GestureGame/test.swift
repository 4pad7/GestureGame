//
//  test.swift
//  GestureGame
//
//  Created by User14 on 2021/4/14.
//

import SwiftUI

struct test: View {
    @EnvironmentObject var settings: Settings
    
    var body: some View {
        ZStack{
            ForEach(0..<settings.current_name.words.count, id: \.self) { index in
                Image("hand")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .overlay(Text("\(settings.current_name.words[index])").font(Font.system(size: 40)).offset(x: 9, y: 20))
                    .position(x: 0, y: 0)
                    .offset(settings.current_name.offsets[index])
                    .gesture(DragGesture()
                                .onChanged({ value in
                                    settings.current_name.offsets[index].width = settings.newPositions[index].width + value.translation.width
                                    settings.current_name.offsets[index].height = settings.newPositions[index].height + value.translation.height
                                })
                                .onEnded({ value in
                                    settings.newPositions[index] = settings.current_name.offsets[index]
                                    let hand_rect = CGRect(x: settings.newPositions[index].width, y: settings.newPositions[index].height, width: 100, height: 100)
                                    let ball_rect = CGRect(x: settings.ballOffsets[index].width, y: settings.ballOffsets[index].height, width: 100, height: 100)
                                    let touched = hand_rect.intersection(ball_rect)
                                    if touched.width > 50 && touched.height > 50{
                                        print("123")
                                        settings.current_name.offsets[index] = settings.ballOffsets[index]
                                    }
                                    
                                }))
            }.zIndex(2)
            ForEach(0..<3) { index in
                Image("volleyball")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .position(x: 0, y: 0)
                    .offset(settings.ballOffsets[index])
                
            }.zIndex(1)
        }
        
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
