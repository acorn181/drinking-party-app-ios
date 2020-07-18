//
//  MainView.swift
//  DrinkingPlace
//
//  Created by Masahiro Ichikawa on 2020/03/28.
//  Copyright © 2020 Isobe Gundan. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @State private var station1: String = ""
    @State private var station2: String = ""
    @State private var station3: String = ""
    @State var isActive = false

    var body: some View {

        NavigationView {
            VStack {
                TextField("駅1", text: $station1)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("駅2", text: $station2)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("駅3", text: $station2)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button("+") {
                    print("+ボタンが押された")
                }
                NavigationLink(
                        destination: MapView(isActive: $isActive),
                        isActive: $isActive,
                        label: { Button(action: { self.isActive = true }, label: { Text("検索") }) })
            }.navigationBarTitle("アプリ名")
                    .padding(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
