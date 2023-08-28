//
//  CardView.swift
//  ShowCreditScore
//
//  Created by Mani Yechuri on 2023/08/28.
//

import SwiftUI

struct CardView: View {
    @State var creditValue = 120
    var body: some View {
        VStack {
            HStack {
                Image("CreditScore")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .padding(.leading, 5)
                Text("Credit Score")
                    .font(.callout)
                    .padding(.top, 18)
                    .padding(.trailing, 30)
            }
            Text("\(creditValue)")
                .font(.largeTitle)
                .padding(.leading, -85)
        }
        .padding()
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .background(Color.blue)
            .frame(width: 200, height: 160)
    }
}
