//
//  ContentView.swift
//  DrinkingPlace
//
//  Created by Masahiro Ichikawa on 2020/03/28.
//  Copyright © 2020 Isobe Gundan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var station1: String = ""
    @State private var station2: String = ""
    @State private var station3: String = ""

    var body: some View {
        VStack {
            Text("アプリ名")
            TextField("駅1", text: $station1)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("駅2", text: $station2)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("駅3", text: $station2)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button("+") {
                print("+ボタンが押された")
            }
            Button("検索") {
                print("検索ボタンが押された")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
