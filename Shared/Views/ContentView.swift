//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/05/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            ScrollView {
                VStack {
                    HeaderView()
                }
            }
            .onAppear {
                UIScrollView.appearance().bounces = false
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
