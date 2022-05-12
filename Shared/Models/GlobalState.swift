//
//  GlobalState.swift
//  Pricing Component WIth Toggle (iOS)
//
//  Created by Jinwook Kim on 2022/05/11.
//

import Foundation

// MARK: FeeTerm enum.
enum FeeTerm {
    case annually
    case monthly
}

// MARK: GlobalState class.
class GlobalState: ObservableObject {
    @Published var feeTerm: FeeTerm = .annually
    @Published var featuredPlanType: PlanType = .professional
}
