//
//  Environment.swift
//  GestureGame
//
//  Created by User14 on 2021/4/14.
//

import Foundation
import SwiftUI

class Settings: ObservableObject {
    @Published var current_name: Question = Question(first: "", second: "", third: "", chinese: "", words: [], offsets: [])
    @Published var newPositions: [CGSize] = []
    @Published var ballOffsets : [CGSize] = []
}
