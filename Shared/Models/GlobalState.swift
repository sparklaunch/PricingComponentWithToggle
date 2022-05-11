//
//  GlobalState.swift
//  Pricing Component WIth Toggle (iOS)
//
//  Created by Jinwook Kim on 2022/05/11.
//

import Foundation

enum FeeTerm {
    case annually
    case monthly
}

class GlobalState: ObservableObject {
    @Published var feeTerm: FeeTerm = .annually
}
