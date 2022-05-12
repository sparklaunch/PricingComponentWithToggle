//
//  Plan.swift
//  Pricing Component WIth Toggle (iOS)
//
//  Created by Jinwook Kim on 2022/05/11.
//

import Foundation

// MARK: PlanType enum.
enum PlanType: String, CaseIterable {
    case basic = "Basic"
    case professional = "Professional"
    case master = "Master"
}

// MARK: Plan struct.
struct Plan: Identifiable {
    let id: UUID = .init()
    let storageCapacity: Int
    let maxNumOfUsers: Int
    let sendAllowance: Int
    let monthlyFee: Double
    let annuallyFee: Double
    var storageCapacityInTB: Double {
        Double(storageCapacity) / 1000.0
    }
    var storageLabel: String {
        if storageCapacity >= 1000 {
            return "\(storageCapacityInTB) TB"
        } else {
            return "\(storageCapacity) GB"
        }
    }
}

extension Plan: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

// MARK: PlanStorage class.
class PlanStorage: ObservableObject {
    @Published var plans: [PlanType: Plan] = [
        .basic: .init(storageCapacity: 500, maxNumOfUsers: 2, sendAllowance: 3, monthlyFee: 19.99, annuallyFee: 199.99),
        .professional: .init(storageCapacity: 1000, maxNumOfUsers: 5, sendAllowance: 10, monthlyFee: 24.99, annuallyFee: 249.99),
        .master: .init(storageCapacity: 2000, maxNumOfUsers: 10, sendAllowance: 20, monthlyFee: 39.99, annuallyFee: 399.99)
    ]
}
