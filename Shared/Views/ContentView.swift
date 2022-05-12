//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/05/11.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var globalState: GlobalState = .init()
    @StateObject private var planStorage: PlanStorage = .init()
    var body: some View {
        ZStack {
            BackgroundView()
            ScrollView {
                VStack {
                    HeaderView()
                    VStack {
                        ForEach(PlanType.allCases, id: \.self) { planType in
                            let plan = planStorage.plans[planType]!
                            PlanItemView(plan: plan, planType: planType)
                        }
                    }
                }
                .padding(.vertical)
            }
            .onAppear {
                UIScrollView.appearance().bounces = false
            }
        }
        .environmentObject(globalState)
        .environmentObject(planStorage)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(GlobalState())
            .environmentObject(PlanStorage())
    }
}
