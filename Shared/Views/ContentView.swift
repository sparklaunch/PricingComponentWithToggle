//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/05/11.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var globalState: GlobalState = .init()
    var body: some View {
        ZStack {
            BackgroundView()
            ScrollView {
                VStack {
                    HeaderView()
                }
                .padding(.vertical)
            }
            .onAppear {
                UIScrollView.appearance().bounces = false
            }
        }
        .environmentObject(globalState)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(GlobalState())
    }
}
