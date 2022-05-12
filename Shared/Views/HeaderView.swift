//
//  HeaderView.swift
//  Pricing Component WIth Toggle (iOS)
//
//  Created by Jinwook Kim on 2022/05/11.
//

import SwiftUI

struct HeaderView: View {
    @EnvironmentObject private var globalState: GlobalState
    @State private var isMonthly = false
    var body: some View {
        VStack {
            Text("Our Pricing")
                .font(.largeTitle.bold())
                .foregroundColor(Color("TitleColor"))
            HStack(spacing: 24) {
                Text("Annually")
                    .font(.title3.bold())
                    .foregroundColor(Color("BodyColor"))
                Toggle(isOn: $isMonthly) {

                }
                .labelsHidden()
                .onChange(of: isMonthly) { isMonthly in
                    withAnimation {
                        globalState.feeTerm = isMonthly ? .monthly : .annually
                    }
                }
                Text("Monthly")
                    .font(.title3.bold())
                    .foregroundColor(Color("BodyColor"))
            }
        }
        .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .background(Color("BackgroundColor"))
            .previewLayout(.sizeThatFits)
            .environmentObject(GlobalState())
    }
}
