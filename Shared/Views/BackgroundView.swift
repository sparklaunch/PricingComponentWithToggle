//
//  BackgroundView.swift
//  Pricing Component WIth Toggle (iOS)
//
//  Created by Jinwook Kim on 2022/05/11.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ZStack(alignment: .top) {
            Color("BackgroundColor")
            Image(decorative: "TopBackground")
                .resizable()
                .scaledToFit()
                .scaleEffect(x: 0.5, y: 0.5, anchor: .topTrailing)
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
            .previewLayout(.sizeThatFits)
    }
}
