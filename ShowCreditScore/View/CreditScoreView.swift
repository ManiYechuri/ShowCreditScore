//
//  CreditScoreView.swift
//  ShowCreditScore
//
//  Created by Mani Yechuri on 2023/08/28.
//

import SwiftUI

struct CreditScoreView: View {
    @StateObject private var creditViewModel = UserCreditViewModel()
    var body: some View {
        NavigationView {
            VStack {
                if let data = creditViewModel.userCreditData {
                    Text("Your credit score is")
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                    Text("\(data.creditReportInfo.score)")
                        .fontWeight(.ultraLight)
                        .font(.system(size: 75))
                    Text("out of \(data.creditReportInfo.maxScoreValue)")
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                    NavigationLink("sec", destination: CreditScoreDetailView(userDetails: data))
                }
            }
            .onAppear{
                creditViewModel.fetchData()
            }
            .padding()
            .background(
                Circle()
                    .stroke(Color.black,lineWidth: 2)
                    .frame(width: 300, height: 300)
        )
        }
    }
}

struct CreditScoreView_Previews: PreviewProvider {
    static var previews: some View {
        CreditScoreView()
    }
}
