//
//  PlanItemView.swift
//  Pricing Component WIth Toggle (iOS)
//
//  Created by Jinwook Kim on 2022/05/11.
//

import SwiftUI

struct PlanItemView: View {
    @EnvironmentObject private var globalState: GlobalState
    let plan: Plan
    let planType: PlanType
    var price: Double {
        switch globalState.feeTerm {
        case .annually:
            return plan.annuallyFee
        case .monthly:
            return plan.monthlyFee
        }
    }
    var body: some View {
        ZStack {
            Color.white
            VStack {
                VStack {
                    Text(planType.rawValue)
                        .font(.title.bold())
                        .foregroundColor(Color("TitleColor"))
                    HStack {
                        Text("$")
                            .font(.largeTitle.bold())
                            .foregroundColor(Color("PriceColor"))
                        Text(price,  format: .number)
                            .kerning(-3)
                            .font(.system(size: 64, weight: .bold))
                            .foregroundColor(Color("PriceColor"))
                    }
                }
                Divider()
                    .background(Color("BodyColor"))
                Text("\(plan.storageLabel) Storage")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("TitleColor"))
                    .padding(.vertical)
                Divider()
                    .background(Color("BodyColor"))
                Text("\(plan.maxNumOfUsers) Users Allowed")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("TitleColor"))
                    .padding(.vertical)
                Divider()
                    .background(Color("BodyColor"))
                Text("Send up to \(plan.sendAllowance) GB")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("TitleColor"))
                    .padding(.vertical)
                Divider()
                    .background(Color("BodyColor"))
                Button {
                    // TODO: LEARN MORE.
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .fill(LinearGradient(colors: [.init("LeadingGradientColor"), .init("TrailingGradientColor")], startPoint: .leading, endPoint: .trailing))
                        Text("LEARN MORE")
                            .kerning(3)
                            .font(.title3.bold())
                            .foregroundColor(.white)
                            .padding()
                    }
                    .padding(.top)
                }
            }
            .padding(36)
        }
        .cornerRadius(15)
        .shadow(color: .gray.opacity(0.5), radius: 5, x: .zero, y: .zero)
        .padding()
        .fixedSize(horizontal: false, vertical: true)
    }
}

struct PlanItemView_Previews: PreviewProvider {
    static var previews: some View {
        PlanItemView(plan: .init(storageCapacity: 500, maxNumOfUsers: 2, sendAllowance: 3, monthlyFee: 19.99, annuallyFee: 199.99), planType: .basic)
            .background(Color("BackgroundColor"))
            .previewLayout(.sizeThatFits)
            .environmentObject(GlobalState())
    }
}
