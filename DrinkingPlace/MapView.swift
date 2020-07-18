//
//  MapView.swift
//  DrinkingPlace
//
//  Created by Masahiro Ichikawa on 2020/07/18.
//  Copyright © 2020 Isobe Gundan. All rights reserved.
//

import SwiftUI

struct MapView: View {
    @Binding var isActive: Bool
    var body: some View {
        Text("検索ボタンが押された")
        .navigationBarItems(leading: Button(action: { self.isActive = false }, label: { Text("Back") }))
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(isActive: .constant(true))
    }
}
